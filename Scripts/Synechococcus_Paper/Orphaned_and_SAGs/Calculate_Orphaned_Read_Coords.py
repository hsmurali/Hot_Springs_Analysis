import sys
import pandas as pd

novel_contig_path = sys.argv[1]
alignment_path = sys.argv[2]
orphaned_reads_path = sys.argv[3]
genome = sys.argv[4]
outpath = sys.argv[5]

df_orphaned_reads = pd.read_csv(orphaned_reads_path, sep = '\t', names = ['Read_ID', 'Genome'])
df_orphaned_reads['Read_ID'] = df_orphaned_reads['Read_ID'].str.replace("_1","/1")
df_orphaned_reads['Read_ID'] = df_orphaned_reads['Read_ID'].str.replace("_2","/2")
df_orphaned_reads = df_orphaned_reads[df_orphaned_reads['Genome'] == genome]

orphaned_reads_aligned = list(df_orphaned_reads['Read_ID'].unique())
orphaned_reads_nonaligned = []
for t in orphaned_reads_aligned:
    if t.endswith("/1"):
        orphaned_reads_nonaligned.append(t.replace("/1","/2"))
    if t.endswith("/2"):
        orphaned_reads_nonaligned.append(t.replace("/2","/1"))

novel_contigs = open(novel_contig_path).readlines()
novel_contigs = [n.replace("\n","") for n in novel_contigs]

df_alignment = pd.DataFrame()
df_iters = pd.read_csv(alignment_path, sep = "\t", names = ['Contig','Start','End', 'Read', 'MAPQ', 'Strand'], chunksize = 1000000)
for df in df_iters:
    df_filter = df[df['Contig'].isin(novel_contigs)]
    df_filter_1 = df_filter[df_filter['Read'].isin(orphaned_reads_aligned)]
    df_filter_2 = df_filter[df_filter['Read'].isin(orphaned_reads_nonaligned)]
    df_filter_1['Aligned'] = 'Aligned'
    df_filter_2['Aligned'] = 'Not-Aligned'
    df_alignment = df_alignment.append(df_filter_1, ignore_index = True)
    df_alignment = df_alignment.append(df_filter_2, ignore_index = True)

print(df_alignment.head())    

df_alignment.to_csv(outpath, sep  = "\t")