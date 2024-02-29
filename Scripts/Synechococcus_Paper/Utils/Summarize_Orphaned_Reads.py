import sys
import pandas as pd

bed_file = sys.argv[1]
orphaned_reads = sys.argv[2]
out_path = sys.argv[3]

df_bed = pd.DataFrame()
df_iters = pd.read_csv(bed_file, sep = "\t", names = ['Contig','Start','End', 'Read', 'MAPQ', 'Strand'], chunksize = 1000000)
for i in df_iters:
    df_bed = df_bed.append(i, ignore_index = True)

df_orphaned_reads = pd.read_csv(orphaned_reads, sep = '\t', names = ['Read_ID', 'Genome'])
df_orphaned_reads['Read_ID'] = df_orphaned_reads['Read_ID'].str.replace("_1","/1")
df_orphaned_reads['Read_ID'] = df_orphaned_reads['Read_ID'].str.replace("_2","/2")
orphaned_reads_aligned = list(df_orphaned_reads['Read_ID'].unique())
orphaned_reads_nonaligned = []

for t in orphaned_reads_aligned:
    if t.endswith("/1"): orphaned_reads_nonaligned.append(t.replace("/1","/2"))
    if t.endswith("/2"): orphaned_reads_nonaligned.append(t.replace("/2","/1"))
df_bed['Orphaned_Read_Flag(Aligned)'] = 0
df_bed['Orphaned_Read_Flag(Non-Aligned)'] = 0

df_bed.loc[df_bed['Read'].isin(orphaned_reads_aligned), 'Orphaned_Read_Flag(Aligned)'] = 1
df_bed.loc[df_bed['Read'].isin(orphaned_reads_nonaligned), 'Orphaned_Read_Flag(Non-Aligned)'] = 1
df_agg = df_bed.groupby('Contig').aggregate({'Read':'count', 'Orphaned_Read_Flag(Aligned)':'sum', 'Orphaned_Read_Flag(Non-Aligned)':'sum'})
df_agg.to_csv(out_path, sep = "\t")