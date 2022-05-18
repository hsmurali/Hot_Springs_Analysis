import sys
import numpy as np
import pandas as pd
from os import listdir

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

files = listdir(data_path)

df_filtered_reads = pd.DataFrame()
for f in files:
    if f.startswith('Hot'):
        df = Load_PAF(data_path+f)
        df = df[df['PIdent'] >= filter_score]
        ref = f.replace(".paf","").split('_')[-1]
        sample = f.replace("_FD_"+ref+".paf","")
        df['Sample'] = sample
        df['Ref'] = ref
        df_filtered_reads = df_filtered_reads.append(df, ignore_index = True)
        print(f, len(df))

df_filtered_reads.to_csv(data_path+'Filtered_Reads.txt', sep = "\t")
