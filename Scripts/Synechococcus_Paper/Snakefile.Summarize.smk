from os import listdir

configfile: "config_summarize.json"

reassembly_dir = config["Reassembly_Dir"]
clustering_dir = config["Clustering_Dir"]
reassembled_genomes = config["reassembled_genomes"]
clustered_genomes = config["clustered_genomes"]
SAG_directory = config["SAGs"]
opdir = config["opdir"]

SAGs = []
for l in listdir(SAG_directory):
	if l.startswith("Uncmic"):
		SAGs.append(l)

rule all:
	input:
		expand(opdir+"{rg}/Summary/Orphaned_Reads.Summary.pkl", rg=reassembled_genomes),
		expand(opdir+"Synechococcus/Summary/SAG_Alignments/{SAG}.paf", SAG=SAGs),
		expand(opdir+"Synechococcus/Summary/SAG.Summary.pkl"),
		expand(opdir+"{cg}/Summary/Respresentative_Abundances.Summary.pkl", cg=clustered_genomes)
		

rule Summarize_Reassmbly:
	input:
		reassembly_dir+"{rg}/",
	output:
		o1=opdir+"{rg}/Summary/Orphaned_Reads.Summary.pkl",
		o2=opdir+"{rg}/Summary/Reassembly.Summary.pkl"
	conda: "hotsprings_utils"
	shell:
		"""
		python Utils/Summarize_Analyses/Summarize_Orphaned_Readcounts.py -d {input} -g {wildcards.rg} -o {output.o1}
		python Utils/Summarize_Analyses/Summarize_Coverage_Assembly.py -d {input} -g {wildcards.rg} -o {output.o2}
		"""

rule Align_SAGs_To_Synechococcus_Novel_Contigs:
	input:
		novel_ctgs=clustering_dir+"/Synechococcus/Novel_Contigs.fna"
	params:
		SAG_directory+"{SAG}/IMG_Data/"
	output:
		opdir+"Synechococcus/Summary/SAG_Alignments/{SAG}.paf"
	conda: "hotsprings_utils"
	shell:
		"""
		minimap2 -t 8 {input.novel_ctgs} {params}*.fna > {output}
		"""

rule Summarize_SAG_Alignments:
	input:
		expand(opdir+"Synechococcus/Summary/SAG_Alignments/{SAG}.paf", SAG=SAGs),
	params:
		eggnog=clustering_dir+"/Synechococcus/Filtered.Eggnog.Annotations.xlsx",
		data_dir=opdir+"Synechococcus/Summary/SAG_Alignments/"
	output:
		opdir+"Synechococcus/Summary/SAG.Summary.pkl"
	conda: "hotsprings_utils"
	shell:
		"""
		python Utils/Summarize_Analyses/Summarize_SAG_Alignments.py -d {params.data_dir} -e {params.eggnog} -o {output}
		"""

rule Summarize_Abundances_Representatives:
	params:
		eggnog=clustering_dir+"/{cg}/Filtered.Eggnog.Annotations.xlsx",
		data_dir=clustering_dir+"/{cg}/Filtered_Representative_Coverages/Summarized_Coverages/"
	output:
		opdir+"{cg}/Summary/Respresentative_Abundances.Summary.pkl"
	conda: "hotsprings_utils"
	shell:
		"""
		python Utils/Summarize_Analyses/Summarize_Novel_Contig_Abundances.py -d {params.data_dir} -e {params.eggnog} -o {output}
		"""


