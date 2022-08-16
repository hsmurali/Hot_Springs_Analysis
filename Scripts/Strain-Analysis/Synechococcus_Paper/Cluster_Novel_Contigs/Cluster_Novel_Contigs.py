import sys
from Cluster_Containments_Utils import *

blast_path = sys.argv[1]
containment_thresh = float(sys.argv[2])
num_contigs_thresh = int(sys.argv[3])
rep_cov = float(sys.argv[4])
length_cutoff = int(sys.argv[5])
clusters_output = sys.argv[6]
osa_assembly = sys.argv[7]
osb_assembly = sys.argv[8]
rep_file = sys.argv[9]

df_blast_iter = pd.read_csv(blast_path, sep = "\t",  names=['qseqid', 'sseqid', 'PIdent', 'length', 'mismatch', 
                                                            'gapopen', 'Qlen','qstart', 'qend', 'Slen', 'sstart',
                                                            'send', 'evalue', 'bitscore'], chunksize=100000)
df_blast = pd.DataFrame()
for b in df_blast_iter:
    df_blast = df_blast.append(b)

df_blast_counts = pd.DataFrame()
df_blast_counts['Count'] = df_blast.groupby(['qseqid','sseqid'])['PIdent'].count()
df_blast = df_blast.set_index(['qseqid','sseqid'])

df_temp = df_blast_counts[df_blast_counts['Count']>1].reset_index()
pairs_to_stitch = list(zip(df_temp['qseqid'].tolist(), df_temp['sseqid'].tolist()))
df_blast_to_stitch = df_blast.loc[pairs_to_stitch].reset_index()
df_blast_to_stitch_grp = df_blast_to_stitch.groupby(['qseqid','sseqid']).apply(Stitch_Blast_Hits)

df_temp = df_blast_counts[df_blast_counts['Count'] == 1].reset_index()
pairs_to_filter = list(zip(df_temp['qseqid'].tolist(), df_temp['sseqid'].tolist()))
df_blast_to_filter = df_blast.loc[pairs_to_filter].reset_index()
df_blast_to_filter['Qcov'] = df_blast_to_filter['length']/df_blast_to_filter['Qlen']*100
df_blast_to_filter['Scov'] = df_blast_to_filter['length']/df_blast_to_filter['Slen']*100
df_blast_to_filter = df_blast_to_filter[['qseqid','sseqid', 'Qcov', 'Scov', 'Qlen', 'Slen', 'PIdent', 
                                         'qstart', 'qend', 'sstart', 'send']]
df_blast_to_filter = df_blast_to_filter.append(df_blast_to_stitch_grp.reset_index())
df_filtered = df_blast_to_filter[(df_blast_to_filter['Qcov'] >= containment_thresh)|
                                 (df_blast_to_filter['Scov'] >= containment_thresh)]

df_filtered['Type']=""
df_filtered.loc[df_filtered['Qcov']>=df_filtered['Scov'], 'Type'] = 'QS'
df_filtered.loc[df_filtered['Qcov']<df_filtered['Scov'], 'Type'] = 'SQ'
df_filtered = df_filtered.loc[df_filtered['qseqid']!=df_filtered['sseqid']].copy()

edge_list = list(zip(df_filtered['qseqid'].tolist(), df_filtered['sseqid'].tolist()))
G = nx.DiGraph(edge_list)
nodes = df_filtered['qseqid'].tolist()+df_filtered['sseqid'].tolist()
lengths = df_filtered['Qlen'].tolist()+df_filtered['Slen'].tolist()
d_length = dict(zip(nodes, lengths))
nx.set_node_attributes(G, d_length, name="length")

d_edgetype = dict(zip(edge_list, df_filtered['Type'].tolist()))
nx.set_edge_attributes(G, d_edgetype, name="type")

d_qcov = dict(zip(edge_list, df_filtered['Qcov'].tolist()))
nx.set_edge_attributes(G, d_qcov, name="qcov")

d_scov = dict(zip(edge_list, df_filtered['Scov'].tolist()))
nx.set_edge_attributes(G, d_scov, name="scov")

d_qstart = dict(zip(edge_list, df_filtered['qstart'].tolist()))
nx.set_edge_attributes(G, d_qstart, name="qstart")

d_qend = dict(zip(edge_list, df_filtered['qend'].tolist()))
nx.set_edge_attributes(G, d_qend, name="qend")

d_sstart = dict(zip(edge_list, df_filtered['sstart'].tolist()))
nx.set_edge_attributes(G, d_sstart, name="sstart")

d_send = dict(zip(edge_list, df_filtered['send'].tolist()))
nx.set_edge_attributes(G, d_send, name="send")

conn = list(nx.weakly_connected_components(G))
containment_clusters = []
ctr = 0
for c in conn:
    g = nx.Graph(G.subgraph(c))
    clusters = Simplify_Containment_Clusters(g)
    containment_clusters += clusters

op = []
for c in containment_clusters:
    if len(c) >= num_contigs_thresh-1:
        for i in c:
            i['GroupID'] = "Group_"+str(ctr)
            op.append(i)
        ctr += 1
df_op = pd.DataFrame(op)
df_op[['RepresentativeLength','ContigLength',
       'qstart','qend','sstart','send']] = df_op[['RepresentativeLength','ContigLength',
                                                   'qstart','qend','sstart','send']].astype(int)
df_grp = pd.DataFrame()
df_grp = df_op.groupby('GroupID').apply(Calculate_Representative_Coverage)
df_filtered_groups = df_grp[(df_grp['RepresentativeCoverage'] >= rep_cov) & (df_grp['RepresentativeLength'] >= length_cutoff)]
group_ids = df_filtered_groups.index.tolist()
df_containment_clusters = df_op[df_op['GroupID'].isin(group_ids)]
df_containment_clusters.to_csv(clusters_output, sep = "\t")

samples = listdir(osa_assembly)
contigs_osa = {}
for s in samples:
    if (s.startswith("Hot") ):
        sample = s.replace("_megahit_assembled_contigs_osa","")
        d = Load_Contigs(osa_assembly+s+'/'+sample+'_osa.contigs.fa', sample, 'osa')
        contigs_osa.update(d)

samples = listdir(osb_assembly)
contigs_osb = {}
for s in samples:
    if (s.startswith("Hot") ):
        sample = s.replace("_megahit_assembled_contigs_osb","")
        d = Load_Contigs(osb_assembly+s+'/'+sample+'_osb.contigs.fa', sample, 'osb')
        contigs_osb.update(d)

representative_contigs = list(df_containment_clusters['RepresentativeContig'].unique())
o = open(rep_file,'w')

for g in representative_contigs:
    o.write('>'+g+'\n')
    if 'osa' in g:   
           o.write(contigs_osa[g]+'\n')
    if 'osb' in g:   
           o.write(contigs_osb[g]+'\n')
o.close()

#'Mount-2/hotspring_metagenome/Synechococcus_paper_analysis/\
#Ref_Guided_Scaffolding_Clustering_Aug_2022/BLAST_All_vs_All/\
#Containment_Clusters_Filtered_90_75_1000.txt'

