import sys
from Cluster_Containments_Utils import *
import argparse as ap

if __name__ == '__main__':
	parser = ap.ArgumentParser(description="Cluster hotspring bacterial assemblies.")
	requiredNamed = parser.add_argument_group('required named arguments')
	optionalNamed = parser.add_argument_group('optional named arguments')

	requiredNamed.add_argument("-a", "--blast_all_vs_all", help="Path to a text of Blast All vs All alignments of Novel Contigs.", required=True)
	requiredNamed.add_argument("-O", "--output_directory", help="Path to the output directory.", required=True)
	requiredNamed.add_argument("-s", "--novel_contigs", help="A fasta file of the novel sequences.", required=True)

	optionalNamed.add_argument("-c", "--contianment_threshold", help="Threshold to declare containments", required=False, default = "90")
	optionalNamed.add_argument("-n", "--num_contigs", help="Number of Contigs in the containment group to be reported as novel.", required=False, default="5")
	optionalNamed.add_argument("-r", "--representative_coverage", help="Fraction of representative contig to be covered.", required=False, default = "75")
	optionalNamed.add_argument("-l", "--length_representative", help="Threshold to filter representative", required=False, default="500.0")

	args = parser.parse_args()

	blast_all_vs_all = args.blast_all_vs_all
	containment_thresh = float(args.contianment_threshold)
	num_contigs_thresh = int(args.num_contigs)
	rep_cov_thresh = float(args.representative_coverage)
	rep_length_thresh = int(args.length_representative)
	output_directory = args.output_directory
	novel_contigs = args.novel_contigs

	df_blast_iter = pd.read_csv(blast_all_vs_all, sep = "\t",  names=['qseqid', 'sseqid', 'PIdent', 'length', 'mismatch', 'gapopen', 
																'Qlen','qstart', 'qend', 'Slen', 'sstart', 'send', 'evalue', 'bitscore'], 
								chunksize=100000)

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
	df_blast_to_filter = df_blast_to_filter[['qseqid','sseqid', 'Qcov', 'Scov', 'Qlen', 'Slen', 'PIdent','qstart', 'qend', 'sstart', 'send']]
	df_blast_to_filter = df_blast_to_filter.append(df_blast_to_stitch_grp.reset_index())
	df_filtered = df_blast_to_filter[(df_blast_to_filter['Qcov'] >= containment_thresh)|(df_blast_to_filter['Scov'] >= containment_thresh)]
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
	edge_attributes = ['Type', 'Qcov', 'Scov', 'qstart', 'qend', 'sstart', 'send']
	for e in edge_attributes:
		d = dict(zip(edge_list, df_filtered[e].tolist()))
		nx.set_edge_attributes(G, d, name=e.lower())

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
	
	fil_contigs = ['RepresentativeLength','ContigLength', 'qstart','qend','sstart','send']
	df_op[fil_contigs] = df_op[fil_contigs].astype(int)
	df_grp = df_op.groupby('GroupID').apply(Calculate_Representative_Coverage)
	df_filtered_groups = df_grp[(df_grp['RepresentativeCoverage'] >= rep_cov_thresh) & (df_grp['RepresentativeLength'] >= rep_length_thresh)]
	group_ids = df_filtered_groups.index.tolist()
	df_containment_clusters = df_op[df_op['GroupID'].isin(group_ids)]
	
	d_novel_contigs = Load_Contigs(novel_contigs)
	representative_contigs = list(df_containment_clusters['RepresentativeContig'].unique())
	o = open(output_directory+"Representatives.fasta","w")

	for g in representative_contigs:
		o.write('>'+g+'\n')
		o.write(d_novel_contigs[g]+'\n')
	o.close()

	df_containment_clusters.to_csv(output_directory+'containment_clusters.txt', sep = "\t")
