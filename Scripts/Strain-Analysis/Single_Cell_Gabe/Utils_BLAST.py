import numpy as np
import pandas as pd
from Utils_MSA import *

def Get_Edits(S1, S2, window=150):
    max_ends = min(len(S1), len(S2))-window
    Edits = []
    for i in range(0, max_ends):
        start, end = i, i+window
        n, M = Edit(S1[start:end], S2[start:end])
        Edits.append(n)
    return Edits

def Load_BLAST_Hits(filepath, qlen = 150):
    df = pd.read_csv(filepath, sep = "\t", names = ['qseqid', 'sseqid', 'pident', 'length', 'mismatch', 
                                                    'gapopen', 'qstart', 'qend', 'sstart', 'send',
                                                    'evalue', 'bitscore'])
    df['qcov'] = df['length']/qlen*100.0
    df['Divergence'] = df['mismatch']/qlen*100.0
    df = df[['qseqid','mismatch','Divergence','bitscore','qcov']]
    return df

def To_String(l):
    l.sort()
    return str(l).replace("[","").replace("]","").replace(",","").replace(" ","").replace("\'","")

def Get_Cumulative_Counts(grp):
    grp['Counts'] = grp['qseqid'].cumsum()    
    grp['Normalized_Counts'] = grp['Counts']/grp['qseqid'].sum()
    grp['Rev_Cumulative'] = 1-grp['Normalized_Counts']
    return grp

def Summarize(df, columns, index, agg = 'sum'):
    if agg == 'sum':
        df_grouped = df.groupby(columns+['mismatch','Divergence']).sum()[['qseqid']]
    else:
        df_grouped = df.groupby(columns+['mismatch','Divergence']).count()[['qseqid']]
    df_grouped = df_grouped.reset_index()
    df_grp = df_grouped.groupby(columns).apply(Get_Cumulative_Counts)
    df_grp = df_grp.set_index(index)
    return df_grp

def Pick_Minimum_SNP(df, Gene = True):
    if Gene:
        Coll_Filter = ['Sample','Gene','qseqid']
    else:
        Coll_Filter = ['Sample','qseqid']
    idx = df.groupby(Coll_Filter)['mismatch'].transform(min) == df['mismatch']
    df_Filter = df.loc[idx]
    df_Filter = df_Filter.drop_duplicates('qseqid')
    df_gene_grouped = Summarize(df_Filter, ['Gene','Sample'],['Gene','Sample'])
    df_sample_grouped = Summarize(df_Filter, ['Sample'], ['Sample'])
    return df_gene_grouped, df_sample_grouped