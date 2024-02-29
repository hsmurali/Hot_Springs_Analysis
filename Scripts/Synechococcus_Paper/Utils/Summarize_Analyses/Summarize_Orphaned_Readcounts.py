import numpy as np
import pandas as pd
import pickle as pkl
import argparse as ap
from os import listdir

def Load_PAF(filepath, grouped = False):
    try:
        header = ['Query','QLen','QStart','QEnd','Orientation','Subject','SLen','SStart','SEnd',
                  'Matches','AlignLength','MAPQ','TP', 'MM', 'GN', 'GO', 'CG', 'CS']
        df = pd.read_csv(filepath, sep = "\t", names = header)
        
        df[['QLen','QStart','QEnd','SLen','SStart',
            'SEnd','Matches','AlignLength','MAPQ']] = df[['QLen','QStart','QEnd','SLen','SStart',
                                                          'SEnd','Matches','AlignLength','MAPQ']].astype('int')
        
        df['PIdent'] = df['AlignLength']/df['QLen']*100
        df = df.loc[df.groupby(['Query'])['PIdent'].idxmax()]
        df = df[['Query','QLen','PIdent']]
        df = df.rename(columns = {'Query':'Contig'})
        df = df.set_index('Contig')
        return df
    except KeyError:
        return pd.DataFrame()

#if __name__ == 'main':
parser = ap.ArgumentParser(description="Estimate Abundances of Filtered Representatives")
requiredNamed = parser.add_argument_group('required named arguments')
requiredNamed.add_argument("-d", "--data_dir", help="Path to the directory containing the results of the Snakemake workflow Snakefile.Reassemble_Reads.smk", required=True)
requiredNamed.add_argument("-g", "--genome", help="Genome id. The Genome id should be consistent across with the ids used for Snakefile.Reassemble_Reads.smk & Snakefile.Cluster.smk", 
						   required=True)
requiredNamed.add_argument("-l", "--length", help="Minimum length of the contgs used to perform scaffolding. (default = 500)", required = False, default = "500")
requiredNamed.add_argument("-p", "--pident", help="PIdentity of Minjimap2 Alignments used for backbones. Should be consistent with the values used for Reference guided scaffolding(default = 70)", 
						   required = False, default = "70") 
requiredNamed.add_argument("-o", "--output", help="Path to the output file", required=True)

args = parser.parse_args()

data_dir = args.data_dir
genome = args.genome
out_file = args.output
length = int(args.length)
pident = float(args.pident)
if data_dir.endswith("/") == False:
	data_dir +=  "/"

hotsprings = sorted(listdir(data_dir))
df_orphaned_reads = pd.DataFrame()

for sample in hotsprings:
	if not sample.startswith("Hot"): continue
	try:
		df_read_counts = pd.read_csv(data_dir+sample+'/Differential_Read_Counting/'+genome+'.Orphaned_Reads.Summary',
									sep = "\t", index_col = "Contig")
		df_fai = pd.read_csv(data_dir+sample+'/Megahit_Contigs/final.contigs.fa.fai', sep = "\t", 
							 names = ['Contig', 'Length', '1', '2','3','4'], index_col = 'Contig')
		df_paf = Load_PAF(data_dir+sample+'/reference_guided_scaffolds/Ref_Guided_Scaffolds.'+genome+'.paf')
		df_paf = df_paf[df_paf['QLen'] > length]

		df_novel_contigs = pd.read_csv(data_dir+sample+'/reference_guided_scaffolds/Ref_Guided_Scaffolds.'+genome+'.txt', sep = "\t")
		novel_contigs = df_novel_contigs['Contig'].unique()
		T = df_paf[df_paf['PIdent'] > pident]
		non_novel_contigs = T.index.unique()

		df = df_read_counts.join(df_fai[['Length']], how = 'left')
		df = df[df['Length'] > length]
		df['Or_Ratio'] = (df['Orphaned_Read_Flag(Aligned)']+df['Orphaned_Read_Flag(Non-Aligned)'])/df['Read']*100
		df['Novel'] = 0
		df.loc[novel_contigs, 'Novel'] = 1
		df.loc[non_novel_contigs, 'Novel'] = -1
		
		df = df.reset_index()
		df['Sample'] = sample.replace("_FD","")
		df['Genome'] = genome
		df_orphaned_reads = df_orphaned_reads.append(df, ignore_index = True)
	except FileNotFoundError:
		print(sample, g)
print(len(df_orphaned_reads[df_orphaned_reads['Novel']==-1]), len(df_orphaned_reads[df_orphaned_reads['Novel']==1]), 
	  len(df_orphaned_reads[df_orphaned_reads['Novel']==0]), len(df_orphaned_reads['Sample'].unique()))
df_orphaned_reads.to_pickle(out_file)