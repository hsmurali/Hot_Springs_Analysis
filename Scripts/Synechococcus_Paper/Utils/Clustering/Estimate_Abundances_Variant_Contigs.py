#!/usr/bin/env python
# coding: utf-8

import sys

import argparse as ap
import pandas as pd
import numpy as np

def Breadth_of_Coverage(group):
	length = group.iloc[0]['SLen']
	cov = np.zeros(length)
	starts = group['SStart'].tolist()
	ends = group['SEnd'].tolist()
	for i in range(0, len(starts)):
		cov[starts[i]:ends[i]]=1
	return cov.sum()/length*100.0

def Avg_Depth_of_Coverage(group):
	length = group.iloc[0]['SLen']
	cov = np.zeros(length)
	starts = group['SStart'].tolist()
	ends = group['SEnd'].tolist()
	for i in range(0, len(starts)):
		cov[starts[i]:ends[i]]+=1
	return cov.mean()

def Load_PAF(filepath):
	header = ['Query','QLen','QStart','QEnd','Orientation','Subject','SLen','SStart','SEnd',
			  'Matches','AlignLength','MAPQ','TP', 'MM', 'GN', 'GO', 'CG', 'CS']
	df = pd.read_csv(filepath, sep = "\t", names = header, compression = 'infer')
	df[['QLen','QStart','QEnd','SLen','SStart',
		'SEnd','Matches','AlignLength','MAPQ']] = df[['QLen','QStart','QEnd','SLen','SStart',
													  'SEnd','Matches','AlignLength','MAPQ']].astype('int')
	df['PIdent'] = df['Matches']/df['QLen']*100
	df = df.loc[df.groupby(['Query'])['PIdent'].idxmax()]
	return df

if __name__ == '__main__':
	parser = ap.ArgumentParser(description="Estimate Abundances of Filtered Representatives")
	requiredNamed = parser.add_argument_group('required named arguments')
	requiredNamed.add_argument("-b", "--bedfile", help="Path to a bed file containing read alignments to the representatives.", required=True)
	requiredNamed.add_argument("-f", "--faifile", help="Path to the samtools faidx of the representatives.", required=True)
	requiredNamed.add_argument("-s", "--sample", help="Sample id", required=True)
	requiredNamed.add_argument("-o", "--output", help="Path to the output file directory", required=True)
	args = parser.parse_args()

	bed_file = args.bedfile
	fai_file = args.faifile
	sample = args.sample
	out_file = args.output

	df_bed = pd.DataFrame()
	df_iters = pd.read_csv(bed_file, sep = "\t", names = ['Subject','SStart','SEnd', 'Query', 'MAPQ', 'Orientation'], 
						   chunksize = 1000000)
	for i in df_iters:
		df_bed = df_bed.append(i, ignore_index = True)

	df_bed = df_bed.set_index('Subject')
	df_fai = pd.read_csv(fai_file, sep = "\t", names = ['Subject', 'SLen', '3', '4', '5', '6'], index_col = 'Subject')
	df_bed = df_bed.join(df_fai[['SLen']])
	df_bed['SLen'] = df_bed['SLen'].astype(int)
	df_bed = df_bed.reset_index()
	df_grouped = df_bed.groupby(['Subject'])

	df_stats = pd.DataFrame()
	df_stats['Breadth_Coverage'] = df_grouped.apply(Breadth_of_Coverage)
	df_stats['Avg_Depth_Coverage'] = df_grouped.apply(Avg_Depth_of_Coverage)
	df_stats['Num_Reads'] = df_grouped['Query'].agg(['count'])
	df_stats[['Breadth_Coverage','Avg_Depth_Coverage']] = df_stats[['Breadth_Coverage','Avg_Depth_Coverage']].round(2)
	df_stats = df_stats.reset_index()
	df_stats['Sample'] = sample

	df_stats.to_csv(out_file, sep = "\t")
