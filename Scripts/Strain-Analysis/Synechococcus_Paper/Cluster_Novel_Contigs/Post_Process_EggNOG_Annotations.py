import sys
import argparse as ap
from Cluster_Containments_Utils import *

if __name__ == '__main__':
	parser = ap.ArgumentParser(description="Identify Novel Groups and Post process EggNOG Annotations.")
	requiredNamed = parser.add_argument_group('required named arguments')
	optionalNamed = parser.add_argument_group('optional named arguments')

	requiredNamed.add_argument("-g", "--eggnog_annotations", help="Path to a file containing EggNOG annotations.", required=True)
	requiredNamed.add_argument("-c", "--clusters", help="Path to a file describing the clusters.", required=True)
	requiredNamed.add_argument("-b", "--blast_hits", help="Output of running blast against the genome and the representatives.", required=True)
	requiredNamed.add_argument("-m", "--map", help="Text file describing the contig ids and the genomes they are found in.", required=True)
	requiredNamed.add_argument("-r", "--representatives", help="A fasta file of the representatives", required=True)
	requiredNamed.add_argument("-o", "--output_directory", help="Output directory", required=True)

	optionalNamed.add_argument("-t", "--threshold", help="threshold to identify novel contigs", required=False, default = "60")

	args = parser.parse_args()

	eggnog_path = args.eggnog_annotations
	containment = args.clusters
	genome_blast = args.blast_hits
	Contig_Map = args.map
	representatives_path = args.representatives
	filter_for_novel = float(args.threshold)
	output_directory = args.output_directory

	df_containment = pd.read_csv(containment, sep = "\t")	
	df_containment_grp = df_containment.groupby('GroupID').apply(Summarize_Group)
	df_containment_grp = df_containment_grp.reset_index()

	df_eggnog = pd.read_csv(eggnog_path, sep = "\t")
	df_eggnog = df_eggnog[['#query','seed_ortholog','evalue','score','max_annot_lvl', 'COG_category','Description','Preferred_name']]
	df_eggnog['Notes by Devaki'] = ""
	df_eggnog['RepresentativeContig'] = df_eggnog['#query'].apply(get_Query_ID)
	df_eggnog = df_eggnog.merge(df_containment_grp, on = 'RepresentativeContig', how = 'right').reset_index()

	df_blast = pd.read_csv(genome_blast, sep = "\t",
						   names=['qseqid', 'sseqid', 'pident', 'length', 'mismatch','gapopen', 'qlen', 'qstart', 
								  'qend', 'slen', 'sstart', 'send', 'evalue', 'bitscore'])
	df_contigs = pd.read_csv(Contig_Map, sep = "\t", names = ['sseqid', 'Genome'])
	d = dict(zip(df_contigs['sseqid'].tolist(), df_contigs['Genome'].tolist()))
	df_blast['Genome'] = df_blast['sseqid'].apply(Assign_Reference, d_ref = d)

	grouped = df_blast.groupby(['qseqid','Genome'])

	df_blast_grouped = pd.DataFrame()
	df_blast_grouped['QCov'] = grouped.apply(Compute_Query_Coverage)
	df_blast_grouped = df_blast_grouped.reset_index()
	df_blast_grouped = df_blast_grouped[df_blast_grouped['QCov'] < filter_for_novel]
	df_blast_grouped = df_blast_grouped.pivot(index = ['qseqid'], columns=['Genome'], values=['QCov'])
	df_blast_grouped.columns = df_blast_grouped.columns.droplevel()
	df_blast_grouped = df_blast_grouped.reset_index()
	df_blast_grouped = df_blast_grouped.reset_index().rename(columns = {'qseqid':'RepresentativeContig'})
	df_blast_grouped = df_blast_grouped.set_index('RepresentativeContig')
	del df_blast_grouped['index']
	df_eggnog = df_eggnog.merge(df_blast_grouped, on = 'RepresentativeContig', how = 'right')
	df_eggnog = df_eggnog.set_index('GroupID')

	representatives = Load_Contigs(representatives_path)
	filtered_representatives = df_eggnog['RepresentativeContig'].unique()

	o = open(output_directory+'/Representatives.filtered.fa','w')
	for f in filtered_representatives:
		o.write('>'+f+'\n')
		o.write('>'+representatives[f]+'\n')
	o.close()

	df_eggnog.to_excel(output_directory+'/Filtered.Eggnog.Annotations.xlsx')
