import sys
import numpy as np
import pandas as pd
from os import listdir

def Load_PAF(filepath, o_cluster = True, filter_thresh = 90.0):
    lines = open(filepath).readlines()
    header = ['Query','Qlen','QStart','QEnd','Orientation','Subject','SLen',
              'SStart','SEnd','Matches','AlignLength','MAPQ']
    op = []
    for l in lines:
        if(o_cluster):
            if "O_allele" in l:
                l = l.split('\t')[:12]
                op.append(dict(zip(header, l)))
        else:
            l = l.split('\t')[:12]
            op.append(dict(zip(header, l)))
    df = pd.DataFrame(op)
    df[['Qlen','QStart','QEnd','SLen','SStart',
        'SEnd','Matches','AlignLength','MAPQ']] = df[['Qlen','QStart','QEnd','SLen','SStart',
                                                      'SEnd','Matches','AlignLength','MAPQ']].astype('int')
    df['PIdent'] = df['Matches']/df['Qlen']*100
    df = df.loc[df.groupby(['Query'])['PIdent'].idxmax()]
    df = df[df['PIdent'] >= filter_thresh]
    return df

pident_filter = float(sys.argv[1])
data_dir = '/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/map_to_O_allele/BowTie2_paf_files/'
files = listdir(data_dir)
df_op = pd.DataFrame()

for f in files:
    if f.startswith("Hot") and f.endswith(".paf"):
        print(f)
        df = Load_PAF(data_dir+f, True, pident_filter)
        df['Sample'] = f.replace("_FD.paf","")
        df_op = df_op.append(df, ignore_index = True)
df_op.to_csv('/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/map_to_O_allele/Filtered_O_Allele_Alignments_Bowtie2.txt', sep = "\t")
