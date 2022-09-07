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

outdir = sys.argv[1]
pident = float(sys.argv[2])

pardir = '/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/C_Allele_Relative_Abundance_Aug/'
c_alignments=pardir+'C_Allele_Alignments/'
b_alignments=pardir+'B_Allele_Alignments/'
a_alignments=pardir+'A_Allele_Alignments/'

samples = listdir(c_alignments+'paf_files/')
samples.sort()

counts = []

df_A_counts = pd.DataFrame()
df_B_counts = pd.DataFrame()
df_C_counts = pd.DataFrame()

for s in samples:

    df_a = Load_PAF(a_alignments+'/paf_files/'+s)
    df_a_bed = pd.read_csv(a_alignments+'/bed_files/'+s.replace(".paf",".bed"), sep = "\t", names = ['Subject', 'Query', 'CIGAR'], index_col = ['Query', 'Subject'])
    df_a = df_a.join(df_a_bed)
    df_a = df_a[(~df_a['CIGAR'].str.contains('I')) & (df_a['PIdent']>=pident)]
    df_a = df_a.reset_index()
    df_a['Sample'] = s.replace("_FD.paf","")
    A_reads = set(df_a['Query'].tolist())
    
    df_b = Load_PAF(b_alignments+'/paf_files/'+s)
    df_b_bed = pd.read_csv(b_alignments+'/bed_files/'+s.replace(".paf",".bed"), sep = "\t", names = ['Subject', 'Query', 'CIGAR'], index_col = ['Query', 'Subject'])
    df_b = df_b.join(df_b_bed)
    df_b = df_b[(~df_b['CIGAR'].str.contains('I')) & (df_b['PIdent']>=pident)]
    df_b = df_b.reset_index()
    df_b['Sample'] = s.replace("_FD.paf","")
    B_reads = set(df_b['Query'].tolist())
    
    df_c = Load_PAF(c_alignments+'/paf_files/'+s)
    df_c_bed = pd.read_csv(c_alignments+'/bed_files/'+s.replace(".paf",".bed"), sep = "\t", names = ['Subject', 'Query', 'CIGAR'], index_col = ['Query', 'Subject'])
    df_c = df_c.join(df_c_bed)
    df_c = df_c[(~df_c['CIGAR'].str.contains('I')) & (df_c['PIdent']>=pident)]
    df_c = df_c.reset_index()
    df_c['Sample'] = s.replace("_FD.paf","")
    C_reads = set(df_c['Query'].tolist())
    
    ABC_reads = A_reads & B_reads & C_reads
    AB_reads = A_reads & B_reads
    BC_reads = B_reads & C_reads
    AC_reads = A_reads & C_reads
    
    only_A = A_reads - AB_reads - AC_reads 
    only_B = B_reads - AB_reads - BC_reads 
    only_C = C_reads - AC_reads - BC_reads 

    df_only_A = df_a[df_a['Query'].isin(only_A)]
    df_A_counts = df_A_counts.append(df_only_A, ignore_index = True)
    df_only_A.to_csv(outdir+'A_Allele_Counts/'+s.replace("_FD.paf",".txt"), sep = "\t")
    
    df_only_B = df_b[df_b['Query'].isin(only_B)]
    df_B_counts = df_B_counts.append(df_only_B, ignore_index = True)
    df_only_B.to_csv(outdir+'B_Allele_Counts/'+s.replace("_FD.paf",".txt"), sep = "\t")
    
    df_only_C = df_c[df_c['Query'].isin(only_C)]
    df_C_counts = df_C_counts.append(df_only_C, ignore_index = True)
    df_only_C.to_csv(outdir+'C_Allele_Counts/'+s.replace("_FD.paf",".txt"), sep = "\t")
    
    d = {'All_A_B_C':len(ABC_reads), 'Both_A_B':len(AB_reads), 'Both_B_C':len(BC_reads), 'Both_A_C':len(AC_reads), 
         'Only_A':len(only_A), 'Only_B':len(only_B), 'Only_C':len(only_C), 'Sample':s.replace("_FD.paf","")}
    counts.append(d)

df_counts = pd.DataFrame(counts)
df_counts.to_csv(outdir+'Counts.txt', sep = "\t")

df_A_grouped = df_A_counts.groupby(['Sample', 'Subject'])
df_A_stats = df_A_grouped.apply(Avg_Depth_of_Coverage)
df_A_stats['Breadth_Coverage'] = df_A_grouped.apply(Breadth_of_Coverage)
df_A_stats['Num_Reads'] = df_A_grouped['Query'].agg(['count'])
df_A_stats[['Breadth_Coverage', 'Avg_Depth_Coverage', 'SD_Depth_Coverage']] = df_A_stats[['Breadth_Coverage','Avg_Depth_Coverage','SD_Depth_Coverage']].round(2)
df_A_stats = df_A_stats.reset_index()
T_A = df_A_stats.pivot_table(index = 'Subject', columns = 'Sample', values = ['Breadth_Coverage','Avg_Depth_Coverage','SD_Depth_Coverage','Num_Reads'])
X_A = T_A.swaplevel(0,1,axis = 'columns')
cols = df_A_stats['Sample'].unique().tolist()
X_A = X_A.reindex(columns=X_A.columns.reindex(cols, level=0)[0])
X_A.columns.names = ('Sample', 'Stat')
X_A = X_A.fillna(0)
X_A.to_excel(outdir+'A_Allele.xlsx')

df_B_grouped = df_B_counts.groupby(['Sample', 'Subject'])
df_B_stats = df_B_grouped.apply(Avg_Depth_of_Coverage)
df_B_stats['Breadth_Coverage'] = df_B_grouped.apply(Breadth_of_Coverage)
df_B_stats['Num_Reads'] = df_B_grouped['Query'].agg(['count'])
df_B_stats[['Breadth_Coverage', 'Avg_Depth_Coverage', 'SD_Depth_Coverage']] = df_B_stats[['Breadth_Coverage','Avg_Depth_Coverage','SD_Depth_Coverage']].round(2)
df_B_stats = df_B_stats.reset_index()
T_B = df_B_stats.pivot_table(index = 'Subject', columns = 'Sample', values = ['Breadth_Coverage','Avg_Depth_Coverage','SD_Depth_Coverage','Num_Reads'])
X_B = T_B.swaplevel(0,1,axis = 'columns')
cols = df_B_stats['Sample'].unique().tolist()
X_B = X_B.reindex(columns=X_B.columns.reindex(cols, level=0)[0])
X_B.columns.names = ('Sample', 'Stat')
X_B = X_B.fillna(0)
X_B.to_excel(outdir+'B_Allele.xlsx')

df_C_grouped = df_C_counts.groupby(['Sample', 'Subject'])
df_C_stats = df_C_grouped.apply(Avg_Depth_of_Coverage)
df_C_stats['Breadth_Coverage'] = df_C_grouped.apply(Breadth_of_Coverage)
df_C_stats['Num_Reads'] = df_C_grouped['Query'].agg(['count'])
df_C_stats[['Breadth_Coverage', 'Avg_Depth_Coverage', 'SD_Depth_Coverage']] = df_C_stats[['Breadth_Coverage','Avg_Depth_Coverage','SD_Depth_Coverage']].round(2)
df_C_stats = df_C_stats.reset_index()
T_C = df_C_stats.pivot_table(index = 'Subject', columns = 'Sample', values = ['Breadth_Coverage','Avg_Depth_Coverage','SD_Depth_Coverage','Num_Reads'])
X_C = T_C.swaplevel(0,1,axis = 'columns')
cols = df_C_stats['Sample'].unique().tolist()
X_C = X_C.reindex(columns=X_C.columns.reindex(cols, level=0)[0])
X_C.columns.names = ('Sample', 'Stat')
X_C = X_C.fillna(0)
X_C.to_excel(outdir+'C_Allele.xlsx')
