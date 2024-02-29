#!/usr/bin/env python
# coding: utf-8

import sys
import numpy as np
import pandas as pd
from functools import partial
from os import listdir, mkdir

def Load_PAF(filepath):
    header = ['Query','QLen','QStart','QEnd','Orientation','Subject',
              'SLen','SStart','SEnd','Matches','AlignLength','MAPQ']
    op = []
    with open(filepath) as fileobject:
        for l in fileobject:
            l = l.split('\t')[:12]
            op.append(dict(zip(header, l)))
    df = pd.DataFrame(op)
    df[['QLen','QStart','QEnd','SLen','SStart',
        'SEnd','Matches','AlignLength','MAPQ']] = df[['QLen','QStart','QEnd','SLen','SStart',
                                                      'SEnd','Matches','AlignLength','MAPQ']].astype('int')
    df['PIdent'] = df['Matches']/df['AlignLength']*100.0
    df = df.set_index(['Query', 'Subject'])
    return df

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
    return pd.Series({'Avg_Depth_Coverage':cov.mean(), 'SD_Depth_Coverage':cov.std()})

def Summarize_Abundances(df):
    df_grouped = df.groupby(['Sample', 'Subject'])
    df_stats = df_grouped.apply(Avg_Depth_of_Coverage)
    df_stats['Breadth_Coverage'] = df_grouped.apply(Breadth_of_Coverage)
    df_stats['Num_Reads'] = df_grouped['Query'].agg(['count'])
    df_stats[['Breadth_Coverage', 'Avg_Depth_Coverage', 'SD_Depth_Coverage']] = df_stats[['Breadth_Coverage','Avg_Depth_Coverage','SD_Depth_Coverage']].round(2)
    df_stats = df_stats.reset_index()
    T= df_stats.pivot_table(index = 'Subject', columns = 'Sample', values = ['Breadth_Coverage','Avg_Depth_Coverage','SD_Depth_Coverage','Num_Reads'])
    X = T.swaplevel(0,1,axis = 'columns')
    cols = df_stats['Sample'].unique().tolist()
    X = X.reindex(columns=X.columns.reindex(cols, level=0)[0])
    X.columns.names = ('Sample', 'Stat')
    X = X.fillna(0)
    return X

def Load_And_Filter_Bed_Files(filepath):
    df_bed = pd.read_csv(filepath, sep = "\t", names = ['Subject', 'Query', 'CIGAR'], index_col = ['Query', 'Subject'])
    df_bed = df_bed[~df_bed['CIGAR'].str.contains('I')]
    return df_bed

def Load_Alleles(paf_path, bed_path, sample, pident):
    df_mm2 = Load_PAF(paf_path)
    df_mm2 = df_mm2[['SStart','SEnd','SLen', 'PIdent']]
    df_bed = Load_And_Filter_Bed_Files(bed_path)
    df_mm2 = df_mm2.join(df_bed)
    df_mm2 = df_mm2[(df_mm2['PIdent']>=pident)]
    df_mm2 = df_mm2.reset_index()
    df_mm2['Sample'] = sample
    return df_mm2

outdir = sys.argv[1]
pident = float(sys.argv[2])

pardir = '/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/C_Allele_Relative_Abundance_Sep/'
c_alignments=pardir+'C_Allele_Alignments/'
b_alignments=pardir+'B_Allele_Alignments/'
a_alignments=pardir+'A_Allele_Alignments/'

samples = listdir(c_alignments+'paf_files/')
samples.sort()

counts = []
df_A_counts, df_B_counts, df_C_counts = pd.DataFrame(), pd.DataFrame(), pd.DataFrame()
df_only_A_counts, df_only_B_counts, df_only_C_counts = pd.DataFrame(), pd.DataFrame(), pd.DataFrame()

for s in samples:
    print(s)
    
    df_a = Load_Alleles(a_alignments+'/paf_files/'+s, a_alignments+'/bed_files/'+s.replace(".paf",".bed"), s.replace(".paf",""), pident)
    df_b = Load_Alleles(b_alignments+'/paf_files/'+s, b_alignments+'/bed_files/'+s.replace(".paf",".bed"), s.replace(".paf",""), pident)
    df_c = Load_Alleles(c_alignments+'/paf_files/'+s, c_alignments+'/bed_files/'+s.replace(".paf",".bed"), s.replace(".paf",""), pident)
    
    df_A_summary = Summarize_Abundances(df_a)
    df_B_summary = Summarize_Abundances(df_b)
    df_C_summary = Summarize_Abundances(df_c)
    
    A_reads = set(df_a['Query'].tolist())
    B_reads = set(df_b['Query'].tolist())
    C_reads = set(df_c['Query'].tolist())
    
    ABC_reads = A_reads & B_reads & C_reads
    AB_reads = A_reads & B_reads
    BC_reads = B_reads & C_reads
    AC_reads = A_reads & C_reads
    only_A = A_reads - AB_reads - AC_reads 
    only_B = B_reads - AB_reads - BC_reads 
    only_C = C_reads - AC_reads - BC_reads 

    df_only_A_summary = Summarize_Abundances(df_a[df_a['Query'].isin(only_A)])
    df_only_B_summary = Summarize_Abundances(df_b[df_b['Query'].isin(only_B)])
    df_only_C_summary = Summarize_Abundances(df_c[df_c['Query'].isin(only_C)])

    df_only_A_counts = pd.concat([df_only_A_counts, df_only_A_summary], axis = 1)
    df_only_B_counts = pd.concat([df_only_B_counts, df_only_B_summary], axis = 1)
    df_only_C_counts = pd.concat([df_only_C_counts, df_only_C_summary], axis = 1)
    
    df_A_counts = pd.concat([df_A_counts, df_A_summary], axis = 1)
    df_B_counts = pd.concat([df_B_counts, df_B_summary], axis = 1)
    df_C_counts = pd.concat([df_C_counts, df_C_summary], axis = 1)
       
    d = {'All_A_B_C':len(ABC_reads), 'Both_A_B':len(AB_reads), 'Both_B_C':len(BC_reads), 'Both_A_C':len(AC_reads), 
         'Only_A':len(only_A), 'Only_B':len(only_B), 'Only_C':len(only_C), 'Sample':s.replace("_FD.paf","")}
    counts.append(d)

df_counts = pd.DataFrame(counts)
df_counts.to_csv(outdir+'Counts.txt', sep = "\t")

df_only_A_counts.to_excel(outdir+'Only_A_Allele.xlsx')
df_only_B_counts.to_excel(outdir+'Only_B_Allele.xlsx')
df_only_C_counts.to_excel(outdir+'Only_C_Allele.xlsx')

df_A_counts.to_excel(outdir+'A_Allele.xlsx')
df_B_counts.to_excel(outdir+'B_Allele.xlsx')
df_C_counts.to_excel(outdir+'C_Allele.xlsx')
