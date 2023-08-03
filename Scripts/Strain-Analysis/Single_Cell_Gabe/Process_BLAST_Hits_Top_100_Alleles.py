#!/usr/bin/env python3


from os import listdir, mkdir
from os.path import isdir
import pandas as pd
from Utils_BLAST import *
import sys

data_dir = sys.argv[1]
out_dir = sys.argv[2]
sample = sys.argv[3]
loci_id = sys.argv[4]

if not isdir(out_dir):
    mkdir(out_dir)

if not isdir(out_dir+sample+'/'):
    mkdir(out_dir+sample+'/')

df_Gene_Blast_ = pd.DataFrame()
df_gene_wise = pd.DataFrame()
df_sample_wise = pd.DataFrame()

for Allele in ['A','B','C']:
    print(Allele)
    files = listdir(data_dir+Allele+'_Alleles/')
    for g in files:
        if g.startswith(loci_id):
            filedir = data_dir +Allele +'_Alleles/'+g+'/'
            blast_hits = listdir(data_dir+Allele+'_Alleles/'+g+'/'+sample+'/')
            print(b)
            for b in blast_hits:
                if b.startswith('MS'):
                    print(b)
                    df = Load_BLAST_Hits(data_dir+Allele+'_Alleles/'+g+'/'+sample+'/'+b)
                    df['Sample'] = sample
                    df['Allele'] = Allele
                    df['Gene'] = loci_id
                    df_Gene_Blast_ = df_Gene_Blast_.append(df, ignore_index = True)

cov_filter = [50, 70, 75, 80, 85, 90, 95, 97, 100]

for c in cov_filter:
    df_Gene_Blast = df_Gene_Blast_[df_Gene_Blast_['qcov']>=c]
    idx = df_Gene_Blast.groupby(['Sample','Allele','qseqid'])['bitscore'].transform(max) == df_Gene_Blast['bitscore']
    df_Gene_Blast = df_Gene_Blast.loc[idx]
    df_Gene_Blast_grp = pd.DataFrame()
    df_Gene_Blast_grp['StrainList'] = df_Gene_Blast.groupby(['Gene', 'Sample', 'qseqid'])['Allele'].apply(list)
    df_Gene_Blast_grp['Strain_String'] = df_Gene_Blast_grp['StrainList'].apply(To_String)
    df_Gene_Blast = df_Gene_Blast.set_index(['Gene','Sample','qseqid'])
    df_Gene_Blast = df_Gene_Blast.join(df_Gene_Blast_grp[['Strain_String']])
    df_Gene_Blast = df_Gene_Blast.reset_index()
    df_Gene_Blast['Cov'] = c
    if c == 50:
        df_Gene_Blast.to_pickle(out_dir+sample+'/'+str(loci_id)+'_BLAST_Hits.pkl')

    print(c, len(df_Gene_Blast))
    
    gene_wise_ABC, sample_wise_ABC = Pick_Minimum_SNP(df_Gene_Blast)
    gene_wise_ABC['Type'] = 'ABC'
    gene_wise_ABC['Cov'] = c
    sample_wise_ABC['Type'] = 'ABC'
    sample_wise_ABC['Cov'] = c
    df_gene_wise = df_gene_wise.append(gene_wise_ABC.reset_index(), ignore_index = True)
    df_sample_wise = df_sample_wise.append(sample_wise_ABC.reset_index(), ignore_index = True)

    gene_wise_AB, sample_wise_AB = Pick_Minimum_SNP(df_Gene_Blast[df_Gene_Blast['Allele'] != 'C'])
    gene_wise_AB['Type'] = 'AB'
    gene_wise_AB['Cov'] = c
    sample_wise_AB['Type'] = 'AB'
    sample_wise_AB['Cov'] = c
    df_gene_wise = df_gene_wise.append(gene_wise_AB.reset_index(), ignore_index = True)
    df_sample_wise = df_sample_wise.append(sample_wise_AB.reset_index(), ignore_index = True)

    try:
        (gene_wise_all_ABC, 
         sample_wise_all_ABC) = Pick_Minimum_SNP(df_Gene_Blast[df_Gene_Blast['Strain_String'] == 'ABC'])
        gene_wise_all_ABC['Type'] = 'All_ABC'
        gene_wise_all_ABC['Cov'] = c
        sample_wise_all_ABC['Type'] = 'All_ABC'
        sample_wise_all_ABC['Cov'] = c
    
        df_gene_wise = df_gene_wise.append(gene_wise_all_ABC.reset_index(), ignore_index = True)
        df_sample_wise = df_sample_wise.append(sample_wise_all_ABC.reset_index(), ignore_index = True)
    except KeyError:
        print('All_ABC', c)
    
    try:        
        (gene_wise_all_AB, 
         sample_wise_all_AB) = Pick_Minimum_SNP(df_Gene_Blast[(df_Gene_Blast['Strain_String'] == 'ABC') & 
                                                              (df_Gene_Blast['Allele'] != 'C')])
        gene_wise_all_AB['Type'] = 'All_AB'
        gene_wise_all_AB['Cov'] = c
        sample_wise_all_AB['Type'] = 'All_AB'
        sample_wise_all_AB['Cov'] = c
        df_gene_wise = df_gene_wise.append(gene_wise_all_AB.reset_index(), ignore_index = True)
        df_sample_wise = df_sample_wise.append(sample_wise_all_AB.reset_index(), ignore_index = True)
    except KeyError:
        print('All_AB', c)
        
df_gene_wise.to_pickle(out_dir+sample+'/'+str(loci_id)+'_BLAST_Hits_Gene_Wise.pkl')
df_sample_wise.to_pickle(out_dir+sample+'/'+str(loci_id)+'_BLAST_Hits_Sample_Wise.pkl')