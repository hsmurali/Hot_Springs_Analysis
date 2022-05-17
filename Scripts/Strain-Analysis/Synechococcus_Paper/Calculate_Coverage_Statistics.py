#!/usr/bin/env python
# coding: utf-8

# In[28]:


import numpy as np
import pandas as pd
from os import listdir

def Summarize(fp, sample):
    genome = "OSB"
    if "OSA" in fp:
        genome = "OSA"
    df = pd.read_csv(fp,sep = "\t")
    average_depth = df['Fold_Cov'].mean()
    std = df['Fold_Cov'].std()
    cov = std/average_depth
    Q1 = np.percentile(df['Fold_Cov'], 25)
    Q2 = np.percentile(df['Fold_Cov'], 50)
    Q3 = np.percentile(df['Fold_Cov'], 75)
    QD = (Q3 - Q1)/(Q3 + Q1)
    breadth = len(df[df['Fold_Cov'] > 0])/len(df)*100.0
    return [sample, average_depth, std, cov, QD, breadth, genome]

def Calculate_Assembly_Statistics(filedir, sample, genome):
    df = pd.read_csv(filedir, names = ['Contig', 'Len', '1', '2', '3', '4'], sep = "\t")
    df = df.sort_values(by = 'Len', ascending = False)
    length = df['Len'].tolist()
    cumsum = np.cumsum(length)
    index = np.where(cumsum >= np.percentile(cumsum, 50))[0][0]
    nG50 = length[index]
    max_len = length[0]
    return [sample, nG50, max_len, genome]

data_dir = '/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Differential_Read_Counting/'
assembly_dir = '/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/'

samples = listdir(data_dir)
summary  = []
assembly = []

for s in samples:
    if (s.startswith("Hot")):
        sample = s.replace("_Diff_Read_Count","")
        print(sample)
        summary.append(Summarize(data_dir+s+'/Genome.OSA.Coverage', sample))
        summary.append(Summarize(data_dir+s+'/Genome.OSB.Coverage', sample))
        assembly.append(Calculate_Assembly_Statistics(assembly_dir+sample+'_megahit_assembled_contigs_osa/'+sample+'_osa.contigs.fa.fai',
                                                      sample, 'OSA'))
        assembly.append(Calculate_Assembly_Statistics(assembly_dir+sample+'_megahit_assembled_contigs_osb/'+sample+'_osb.contigs.fa.fai',
                                                      sample, 'OSB'))

df_summary = pd.DataFrame(summary, columns = ['Sample','Depth','Deviation','COV','QD','Breadth','Genome'])
df_assembly = pd.DataFrame(assembly, columns = ['Sample', 'NG50', 'Max_Len', 'Genome'])
df_summary = pd.merge(df_summary, df_assembly, on = ['Sample','Genome'])
df_summary.to_csv('Coverage_Statistics.txt', sep = "\t")
