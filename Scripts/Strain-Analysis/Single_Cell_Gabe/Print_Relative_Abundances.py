#!/usr/bin/env python
# coding: utf-8

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
    return df

pardir = '/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/C_Allele_Relative_Abundance_Aug/'
c_alignments=pardir+'C_Allele_Alignments/paf_files/'
b_alignments=pardir+'B_Allele_Alignments/paf_files/'
a_alignments=pardir+'A_Allele_Alignments/paf_files/'

samples = listdir(c_alignments)
samples.sort()

df_only_A = pd.DataFrame()
df_only_B = pd.DataFrame()
df_only_C = pd.DataFrame()

for s in samples:
    df_a = Load_PAF(a_alignments+s)
    df_b = Load_PAF(b_alignments+s)
    df_c = Load_PAF(c_alignments+s)
    df_a['Sample'] = s.replace("_FD.paf","")
    df_b['Sample'] = s.replace("_FD.paf","")
    df_c['Sample'] = s.replace("_FD.paf","")
    
    A_reads = set(df_a.loc[df_a['PIdent']>=97, 'Query'].tolist())
    B_reads = set(df_b.loc[df_b['PIdent']>=97, 'Query'].tolist())
    C_reads = set(df_c.loc[df_c['PIdent']>=97, 'Query'].tolist())
    
    only_A = A_reads - B_reads - C_reads 
    only_B = B_reads - A_reads - C_reads 
    only_C = C_reads - A_reads - B_reads 

    df_only_A = df_only_A.append(df_a[df_a['Query'].isin(only_A)], ignore_index = True)
    df_only_B = df_only_B.append(df_b[df_b['Query'].isin(only_B)], ignore_index = True)
    df_only_C = df_only_C.append(df_c[df_c['Query'].isin(only_C)], ignore_index = True)

df_only_A.to_csv('Only-A.txt', sep = "\t")
df_only_B.to_csv('Only-B.txt', sep = "\t")
df_only_C.to_csv('Only-C.txt', sep = "\t")
