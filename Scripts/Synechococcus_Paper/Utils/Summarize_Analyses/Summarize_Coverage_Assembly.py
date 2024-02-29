import numpy as np
import pandas as pd
import argparse as ap
import pickle as pkl
from os import listdir
from subprocess import check_output

def Parse_Diff_Read_Alignment_Summary(fp):
	lines = open(fp).readlines()
	d = {}
	for l in lines:
		l = l.replace("\n","").split("\t")
		d[l[0]] = int(l[2])
	return d

def Get_NGx(lengths, cumulative, X=50):
	total_length = np.sum(lengths)
	i = cumulative[cumulative <= X*total_length/100]
	return lengths[len(i)]

def Assembly_Stats(fai):
	df = pd.read_csv(fai, names = ['Contig', 'Length', '1','2','3','4'], sep = "\t")
	df = df.sort_values(by = ['Length'], ascending = False)
	lengths, cumulative = df['Length'].tolist(), np.cumsum(df['Length'].tolist())
	return lengths, cumulative

def Summarize_Coverages(coverage_file, w = 1000):
	df = pd.DataFrame()
	iters = pd.read_csv(coverage_file, sep = "\t",chunksize=100000, engine='c')
	for i in iters:
		df = df.append(i, ignore_index = True)
	df = df[['Fold_Cov']]
	glen = len(df)
	return df.rolling(w).mean()[w-1::w], glen

def line_count(filename):
	return int(check_output(['wc', '-l', filename]).split()[0])

parser = ap.ArgumentParser(description="Estimate Abundances of Filtered Representatives")
requiredNamed = parser.add_argument_group('required named arguments')
requiredNamed.add_argument("-d", "--data_dir", help="Path to the directory obtained by running  Snakefile.Reassemble_Reads.smk", required=True)
requiredNamed.add_argument("-o", "--output", help="Path to the output file", required=True)
requiredNamed.add_argument("-g", "--genome", help="Genome id. The Genome id should be consistent across with the ids used for Snakefile.Reassemble_Reads.smk ", 
						   required=True)

optionalNamed = parser.add_argument_group('optional named arguments')
optionalNamed.add_argument("-w", "--window", help="window to get average coverage over the genome", required=False, default = "1000")
optionalNamed.add_argument("-NG", "--NGx", help="Parameter to compute for NGx", required=False, default="50")

args = parser.parse_args()
out_file = args.output
data_dir = args.data_dir
g = args.genome	
w = int(args.window)
x = int(args.NGx)
df_coverages = pd.DataFrame()
summary_list = []
Assembly_dict = {}

if data_dir.endswith("/") == False:
	data_dir +=  "/"

for f in listdir(data_dir):
	if f.startswith("Hot"):
		coverage_file = data_dir+f+'/Differential_Read_Counting/Genome.'+g+'.Coverage.gz'
		summary_file = data_dir+f+'/Differential_Read_Counting/Genome.'+g+'.Summary'
		faifile = data_dir+f+'/Megahit_Contigs/final.contigs.fa.fai'
		align_bed = data_dir+f+'/Alignments/alignments.bed'

		sample = f.replace("_FD","")
		d_summ = Parse_Diff_Read_Alignment_Summary(summary_file)
		read_counts = line_count(align_bed)
		d_summ['Sample'] = sample
		d_summ['ReadCounts'] = read_counts
		
		lengths, cumulative = Assembly_Stats(faifile)
		NGx = Get_NGx(lengths, cumulative, x)
		
		df_cov_smoothed, glen = Summarize_Coverages(coverage_file, w)

		summary_list.append(d_summ)
		df_coverages[sample] = df_cov_smoothed['Fold_Cov'].tolist()
		Assembly_dict[sample] = {'lengths':lengths, 'cumulative':cumulative, 'Glen':glen, 'NGx':NGx}
df_diff_reads = pd.DataFrame(summary_list)

d = {'Summary':df_diff_reads, 'Assembly':Assembly_dict, 'df_cov':df_coverages}
f = open(out_file, "wb")
pkl.dump(d, f)
f.close()