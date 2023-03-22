#!/usr/bin/env python
# coding: utf-8

import sys
from os import listdir

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

data_path = sys.argv[1]
filter_score = float(sys.argv[2])
out_dir = sys.argv[3]

f = data_path.split("/")[-1]
ref = f.replace(".paf","").split('_')[-1]
sample = f.replace("_FD_"+ref+".paf","")

df = Load_PAF(data_path)
df = df[df['PIdent'] >= filter_score]

print(df)

df_grouped = df.groupby(['Subject'])

df_stats = pd.DataFrame()
df_stats['Breadth_Coverage'] = df_grouped.apply(Breadth_of_Coverage)
df_stats['Avg_Depth_Coverage'] = df_grouped.apply(Avg_Depth_of_Coverage)
df_stats['Num_Reads'] = df_grouped['Query'].agg(['count'])
df_stats[['Breadth_Coverage','Avg_Depth_Coverage']] = df_stats[['Breadth_Coverage','Avg_Depth_Coverage']].round(2)
df_stats = df_stats.reset_index()
df_stats['Sample'] = sample
df_stats['Ref'] = ref

print(df_stats.head())

df_stats.to_csv(out_dir, sep = "\t")
