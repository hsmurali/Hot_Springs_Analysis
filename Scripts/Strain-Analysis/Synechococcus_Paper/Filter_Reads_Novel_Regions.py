import sys
import numpy as np
import pandas as pd
from os import listdir

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
    lines = open(filepath).readlines()
    header = ['Query','Qlen','QStart','QEnd','Orientation','Subject','SLen',
              'SStart','SEnd','Matches','AlignLength','MAPQ']
    op = []
    for l in lines:
        l = l.split('\t')[:12]
        op.append(dict(zip(header, l)))
    df = pd.DataFrame(op)
    df[['Qlen','QStart','QEnd','SLen','SStart',
        'SEnd','Matches','AlignLength','MAPQ']] = df[['Qlen','QStart','QEnd','SLen','SStart',
                                                      'SEnd','Matches','AlignLength','MAPQ']].astype('int')
    df['PIdent'] = df['Matches']/df['Qlen']*100
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
