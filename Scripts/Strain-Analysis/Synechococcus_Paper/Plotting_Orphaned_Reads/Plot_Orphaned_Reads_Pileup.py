import sys
import numpy as np
import pandas as pd
from os.path import isdir
from os import listdir, mkdir

import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages

rcParams = {'font.size': 24 , 'font.weight': 'normal', 'font.family': 'sans-serif',
            'axes.unicode_minus':False, 'axes.labelweight':'normal'}
plt.rcParams.update(rcParams)

df_novel_contigs = pd.read_csv('contig_containment_groups_subset.txt', sep = "\t")

def Plot(df_bed, genome, sample, pdf):
    contigs = list(df_bed.index.unique())
    for contig in contigs:
        contig_name = sample+'_'+genome+'_'+contig
        length = df_novel_contigs[df_novel_contigs['Contig'] == contig_name].iloc[0]['ContigLength']
        group = df_novel_contigs[df_novel_contigs['Contig'] == contig_name].iloc[0]['GroupID']
        sel = df_bed.loc[contig]
        print(contig, length, len(sel))    
        ctr = 0

        starts = sel['Start'].tolist()
        ends = sel['End'].tolist()
        Strand = sel['Strand'].tolist()
        Alignment_status = sel['Aligned'].tolist()

        plt.rcParams.update(rcParams)
        fig, ax = plt.subplots(1,1, figsize = (20, 10))
        for i in range(len(sel)):
            if Alignment_status[i] == 'Aligned':
                color = 'teal'
            elif Alignment_status[i] == 'Not-Aligned':
                color = 'orange'

            ax.plot([starts[i], ends[i]], [ctr, ctr], color = color)
            if Strand[i] == '+':
                ax.scatter([ends[i]],[ctr], color = color, marker = '>')
            if Strand[i] == '-':
                ax.scatter([starts[i]],[ctr], color = color, marker = '<')
            ctr += 1
            ctr = ctr % 100
        ax.axvline(0, color = 'black', linestyle = '--', linewidth = 0.5)
        ax.axvline(length, color = 'black', linestyle = '--', linewidth = 0.5)
        ax.set_xlim([-10, length+10])
        ax.set_yticks([])
        ax.set_title('Contig:'+contig +'    Group:'+group)
        fig.tight_layout()
        pdf.savefig(fig)
        plt.close('all')
    pdf.close()

out_dir = '/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Orphaned_Reads_Pileup/'
data_dir = '/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Differential_Read_Counting/'
f = sys.argv[1]

print(f)
        
sample = f.replace("_Diff_Read_Count","")
df_osa = pd.read_csv(data_dir+f+'/OSA.Orphaned_Reads.bed', sep = '\t', index_col = 'Contig')
df_osb = pd.read_csv(data_dir+f+'/OSB.Orphaned_Reads.bed', sep = '\t', index_col = 'Contig')
pdf = PdfPages(out_dir+sample+'.OSA.pdf')
Plot(df_osa, 'osa', sample, pdf)

pdf = PdfPages(out_dir+sample+'.OSB.pdf')
Plot(df_osb, 'osb', sample, pdf)        