import numpy as np
import pandas as pd
import argparse as ap
import pickle as pkl
from os import listdir

def Compute_Query_Coverage(group):
	qstarts, qends = group['QStart'].tolist(), group['QEnd'].tolist()
	sstarts, sends = group['SStart'].tolist(), group['SEnd'].tolist()
	alignlengths = np.array(group['AlignLength'].tolist())
	pident = np.array(group['PIdent'].tolist())
	qlength = group.iloc[0]['QLen']
	slength = group.iloc[0]['SLen']
	presence = np.zeros(qlength)
	avg_pident = np.sum(np.multiply(alignlengths,pident))/np.sum(alignlengths)
	
	for i in range(len(qstarts)):
		presence[qstarts[i]:qends[i]] = 1
	qcov = np.sum(presence)/len(presence)*100
	
	presence = np.zeros(slength)
	for i in range(len(sstarts)):
		presence[sstarts[i]:sends[i]] = 1
	scov = np.sum(presence)/len(presence)*100  
	return pd.Series({'Qcov':qcov, 'Scov':scov, 'PIdent':avg_pident})

def Load_PAF(filepath):
	try:
		header = ['Query','QLen','QStart','QEnd','Orientation','Subject','SLen','SStart','SEnd',
				  'Matches','AlignLength','MAPQ','TP', 'MM', 'GN', 'GO', 'CG', 'CS']
		df = pd.read_csv(filepath, sep = "\t", names = header)
		
		df[['QLen','QStart','QEnd','SLen','SStart',
			'SEnd','Matches','AlignLength','MAPQ']] = df[['QLen','QStart','QEnd','SLen','SStart',
														  'SEnd','Matches','AlignLength','MAPQ']].astype('int')
		
		df['PIdent'] = df['Matches']/df['AlignLength']*100
		df_grp = df.groupby(['Query','Subject']).apply(Compute_Query_Coverage)
		df_grp['Breadth_Coverage'] = df_grp[['Qcov', 'Scov']].max(axis = 1)
		return df_grp
	except KeyError:
		return pd.DataFrame()

parser = ap.ArgumentParser(description="Calculate Alignment Summary of Filtered Representatives in SAGs")
requiredNamed = parser.add_argument_group('required named arguments')
requiredNamed.add_argument("-d", "--data_dir", help="Path to the directory containing the minimap alignment of the contigs to SAGs", required=True)
requiredNamed.add_argument("-e", "--eggnog_excel", help="Path to the Filtered EggNOG Annotation", required=True)
requiredNamed.add_argument("-c", "--coverage_filter", help="Subject coverage. (default = 95)", required=False, default = "95")
requiredNamed.add_argument("-o", "--output", help="Path to the output pickle file", required=True)

args = parser.parse_args()

data_path = args.data_dir
eggnog_excel = args.eggnog_excel
out_file = args.output
cov = float(args.coverage_filter)

files = listdir(data_path)
df_all_alignments = pd.DataFrame()
df_filtered_alignments = pd.DataFrame()

if data_path.endswith("/") == False:
	data_path +=  "/"


for f in files:
	if f.endswith(".paf"):
		df = Load_PAF(data_path+f)
		if len(df) <= 0:
			continue
		df['Single_Cell_Sample'] = f.replace("_FD.paf","")
		df = df.reset_index()
		df_all_alignments = df_all_alignments.append(df, ignore_index = True)
		df = df[(df['Scov'] >= cov)]
		df_filtered_alignments = df_filtered_alignments.append(df, ignore_index = True)

df_groups = pd.read_excel(eggnog_excel)
df_groups = df_groups[['GroupID','RepresentativeContig']]
df_groups = df_groups.set_index(['RepresentativeContig'])
df_groups = df_groups.drop_duplicates()

df_filtered_alignments = df_filtered_alignments[df_filtered_alignments['PIdent'] > 0]
df_grp = df_filtered_alignments.groupby('Subject').count()[['Single_Cell_Sample']]
df_grp = df_grp.join(df_groups, how = 'inner')
df_grp = df_grp.set_index('GroupID')
df_grp['Single_Cell_Sample'] = df_grp['Single_Cell_Sample'].fillna(0)
df_grp = df_grp.sort_values(by = 'Single_Cell_Sample', ascending = False)

d = {'All_Alignments':df_all_alignments, 'Filtered_Alignments':df_filtered_alignments, 'Group_Counts':df_grp}

f = open(out_file, "wb")
pkl.dump(d, f)
f.close()