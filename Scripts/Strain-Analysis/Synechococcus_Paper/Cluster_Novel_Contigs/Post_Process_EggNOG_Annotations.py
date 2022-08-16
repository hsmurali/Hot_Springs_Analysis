import sys
from Cluster_Containments_Utils import *

eggnog_path = sys.argv[1]
containment = sys.argv[2]
synechococcus_blast = sys.argv[3]
output = sys.argv[4]

df_containment = pd.read_csv(containment, sep = "\t")
df_containment_grp = df_containment.groupby('GroupID').apply(Summarize_Group)
df_containment_grp = df_containment_grp.reset_index()

df_eggnog = pd.read_csv(eggnog_path, sep = "\t")
df_eggnog = df_eggnog[['#query','seed_ortholog','evalue','score','max_annot_lvl',
                       'COG_category','Description','Preferred_name']]
df_eggnog['Notes by Devaki'] = ""
df_eggnog['RepresentativeContig'] = df_eggnog['#query'].apply(get_Query_ID)
df_eggnog = df_eggnog.merge(df_containment_grp, on = 'RepresentativeContig', how = 'right')
df_eggnog = df_eggnog.reset_index()

df_blast = pd.read_csv(synechococcus_blast, sep = "\t",names=['qseqid', 'sseqid', 'pident', 'length', 'mismatch', 
                                                              'gapopen', 'qlen', 'qstart', 'qend', 'slen', 
                                                              'sstart', 'send', 'evalue', 'bitscore'])
df_blast['sseqid'] = df_blast['sseqid'].replace("gi|86604733|ref|NC_007775.1|","OSA")
df_blast['sseqid'] = df_blast['sseqid'].replace("gi|86607503|ref|NC_007776.1|","OSB")
grouped = df_blast.groupby(['qseqid','sseqid'])

df_blast_grouped = pd.DataFrame()
df_blast_grouped['QCov'] = grouped.apply(Compute_Query_Coverage)
df_blast_grouped = df_blast_grouped.reset_index()
df_blast_grouped = df_blast_grouped.pivot(index = ['qseqid'], columns=['sseqid'], values=['QCov'])
df_blast_grouped.columns = df_blast_grouped.columns.droplevel()
df_blast_grouped = df_blast_grouped.reset_index()
df_blast_grouped = df_blast_grouped.reset_index().rename(columns = {'qseqid':'RepresentativeContig'})
df_blast_grouped = df_blast_grouped.set_index('RepresentativeContig')
del df_blast_grouped['index']
df_blast_grouped = df_blast_grouped.rename(columns={'OSA':'OSA_Cov', 'OSB':'OSB_Cov'})

df_eggnog = df_eggnog.merge(df_blast_grouped, on = 'RepresentativeContig', how = 'left')
del df_eggnog['index']
df_eggnog = df_eggnog.set_index('GroupID')

df_eggnog.to_excel(output)