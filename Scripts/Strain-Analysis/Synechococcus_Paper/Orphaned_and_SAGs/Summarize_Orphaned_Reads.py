import sys
import pandas as pd

sample = sys.argv[1]
sample = sample.replace("_Diff_Read_Count", "")

data_path = '/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/'
osa_bed_path = data_path+'reassembly/'+sample+'_megahit_assembled_contigs_osa/'+sample+'_osa_scaffolds/alignment.bed'
osb_bed_path = data_path+'reassembly/'+sample+'_megahit_assembled_contigs_osb/'+sample+'_osb_scaffolds/alignment.bed'

df_osa = pd.DataFrame()
df_iters = pd.read_csv(osa_bed_path, sep = "\t", names = ['Contig','Start','End', 'Read', 'MAPQ', 'Strand'], chunksize = 1000000)
for i in df_iters:
    df_osa = df_osa.append(i, ignore_index = True)

df_osa_orphaned_reads = pd.read_csv(data_path+'Differential_Read_Counting/'+sample+'_Diff_Read_Count/Genome.OSA.orphaned_reads', sep = '\t', names = ['Read_ID', 'Genome'])
df_osa_orphaned_reads['Read_ID'] = df_osa_orphaned_reads['Read_ID'].str.replace("_1","/1")
df_osa_orphaned_reads['Read_ID'] = df_osa_orphaned_reads['Read_ID'].str.replace("_2","/2")
osa_orphaned_reads_aligned = list(df_osa_orphaned_reads['Read_ID'].unique())
osa_orphaned_reads_nonaligned = []
for t in osa_orphaned_reads_aligned:
    if t.endswith("/1"):
        osa_orphaned_reads_nonaligned.append(t.replace("/1","/2"))
    if t.endswith("/2"):
        osa_orphaned_reads_nonaligned.append(t.replace("/2","/1"))
df_osa['Orphaned_Read_Flag(Aligned)'] = 0
df_osa['Orphaned_Read_Flag(Non-Aligned)'] = 0

df_osa.loc[df_osa['Read'].isin(osa_orphaned_reads_aligned), 'Orphaned_Read_Flag(Aligned)'] = 1
df_osa.loc[df_osa['Read'].isin(osa_orphaned_reads_nonaligned), 'Orphaned_Read_Flag(Non-Aligned)'] = 1
df_agg_osa = df_osa.groupby('Contig').aggregate({'Read':'count', 'Orphaned_Read_Flag(Aligned)':'sum', 'Orphaned_Read_Flag(Non-Aligned)':'sum'})

print(df_agg_osa.head())
df_agg_osa.to_csv(data_path+'Differential_Read_Counting/'+sample+'_Diff_Read_Count/OSA.Orphaned_Read_Counts', sep = "\t")

df_osb = pd.DataFrame()
df_iters = pd.read_csv(osb_bed_path, sep = "\t", names = ['Contig','Start','End', 'Read', 'MAPQ', 'Strand'], chunksize = 1000000)
for i in df_iters:
    df_osb = df_osb.append(i, ignore_index = True)
   
df_osb_orphaned_reads = pd.read_csv(data_path+'Differential_Read_Counting/'+sample+'_Diff_Read_Count/Genome.OSB.orphaned_reads', sep = '\t', names = ['Read_ID', 'Genome'])
df_osb_orphaned_reads['Read_ID'] = df_osb_orphaned_reads['Read_ID'].str.replace("_1","/1")
df_osb_orphaned_reads['Read_ID'] = df_osb_orphaned_reads['Read_ID'].str.replace("_2","/2")
osb_orphaned_reads_aligned = list(df_osb_orphaned_reads['Read_ID'].unique())
osb_orphaned_reads_nonaligned = []
for t in osb_orphaned_reads_aligned:
    if t.endswith("/1"):
        osb_orphaned_reads_nonaligned.append(t.replace("/1","/2"))
    if t.endswith("/2"):
        osb_orphaned_reads_nonaligned.append(t.replace("/2","/1"))
df_osb['Orphaned_Read_Flag(Aligned)'] = 0
df_osb['Orphaned_Read_Flag(Non-Aligned)'] = 0

df_osb.loc[df_osb['Read'].isin(osb_orphaned_reads_aligned), 'Orphaned_Read_Flag(Aligned)'] = 1
df_osb.loc[df_osb['Read'].isin(osb_orphaned_reads_nonaligned), 'Orphaned_Read_Flag(Non-Aligned)'] = 1
df_agg_osb = df_osb.groupby('Contig').aggregate({'Read':'count', 'Orphaned_Read_Flag(Aligned)':'sum', 'Orphaned_Read_Flag(Non-Aligned)':'sum'})

print(df_agg_osb)
df_agg_osb.to_csv(data_path+'Differential_Read_Counting/'+sample+'_Diff_Read_Count/OSB.Orphaned_Read_Counts', sep = "\t")