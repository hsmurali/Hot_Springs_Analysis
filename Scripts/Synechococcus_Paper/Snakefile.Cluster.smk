from os import listdir

configfile: "config_cluster.json"
genome_id = config["genome_id"]
reference_scaffolds_dirs = config[genome_id]["data_dir"]
genomes = config[genome_id]["genome_list"]
reference_genomes = config[genome_id]["Reference_Genomes"]
opdir = config["output_dir"]+config["genome_id"]+"/"

print(reference_genomes)
print(reference_scaffolds_dirs)
print(genomes)

files = listdir(config["reads_dir"])
samples = []
for s in files:
	if s.startswith("Hot"):
		samples.append(s)

rule all:
	input:
		expand(opdir+"Novel_Contigs.{g}.fna", g=genomes),
		opdir+"Filtered.Eggnog.Annotations.xlsx",
		opdir+"Novel_Contigs.fna",
		opdir+"containment_clusters.txt",
		opdir+"Representatives.fasta",
		opdir+"Novel_Contigs."+config["genome_id"]+".All_V_All.txt",
		opdir+"Representatives."+config["genome_id"]+".blast",
		opdir+"Prodigal/Representatives_Prodigal.faa",
		opdir+"Representatives.filtered.fa",
		expand(opdir+"Filtered_Representative_Coverages/Summarized_Coverages/{sample}.txt", sample=samples),
		expand(opdir+"Filtered_Representative_Coverages/Bed_Files/{sample}.bed", sample=samples)

scaffolds = dict(zip(genomes, reference_scaffolds_dirs))
references = dict(zip(genomes, reference_genomes))

def get_scaffolds(wildcards):
	return scaffolds[wildcards.g]

def get_references(wildcards):
	return references[wildcards.g]

rule Identify_Novel_Contigs:
	conda: "hotsprings_utils"
	output:
		opfile = opdir+"Novel_Contigs.{g}.fna"
	params:
		ref=get_scaffolds
	resources:
		mem_mb=8000
	shell:
		"""
		python Utils/Clustering/Identify_Novel_Contigs.py -a {params.ref} -g {wildcards.g} -o {output.opfile}
		"""

rule Extract_Reference_Contigs:	
	output:
		opdir+"Reference_Contigs.{g}.txt"
	params:
		ref=get_references
	resources:
		mem_mb=8000
	shell:
		"""
		grep ">" {params.ref} | cut -d '>' -f2 | cut -d ' ' -f1 | awk '{{print $0 " {wildcards.g}"}}' > {output}
		"""

rule Merge_Reference_Genomes:
	input:
		expand(opdir+"Reference_Contigs.{g1}.txt", g1=genomes),
		expand(opdir+"Novel_Contigs.{g1}.fna", g1=genomes)
	params:
		Ref_Ctg = opdir+"Reference_Contigs.*.txt",
		Nvl_Ctg = opdir+"Novel_Contigs.*.fna",
		Ref_Cat = " ".join(reference_genomes),
	output:
		ref = opdir+"References.fasta",
		ref_contigs = opdir+"Reference_Contigs.txt",
		novel_contigs = opdir+"Novel_Contigs.fna"
	resources:
		mem_mb=8000
	shell:
		"""
		cat {params.Ref_Cat} > {output.ref}
		cat {params.Nvl_Ctg} > {output.novel_contigs}
		cat {params.Ref_Ctg} > {output.ref_contigs}
		"""

rule Make_BlastDB_All_v_All:
	input:
		opdir+"Novel_Contigs.fna"
	output:
		directory(opdir+"BLAST_DB_All_v_All/"),
		done=touch(opdir+"BLAST_DB_All_v_All/BLAST_All_v_All.makeblastdb.done")
	params:
		db=opdir+"BLAST_DB_All_v_All/Novel_Contigs.db"
	resources:
		mem_mb=8000
	shell:
		"""
		module load blast 
		makeblastdb -dbtype nucl -in {input} -input_type fasta -parse_seqids -out {params.db}
		"""

rule BLAST_All_v_All_Alignment:
	input:
		done=opdir+"BLAST_DB_All_v_All/BLAST_All_v_All.makeblastdb.done",
		query=opdir+"Novel_Contigs.fna"
	params:
		db=opdir+"BLAST_DB_All_v_All/Novel_Contigs.db"
	output:
		opdir+"Novel_Contigs."+config["genome_id"]+".All_V_All.txt"
	threads:
		int(config['threads'])
	resources:
		mem_mb=16000
	shell:
		"""
		module load blast
		blastn -db {params.db} -query {input.query} \
		-out {output} -num_threads {threads} \
		-outfmt "6 qseqid sseqid pident length mismatch gapopen qlen qstart qend slen sstart send evalue bitscore" 
		"""

rule Cluster_All_Vs_All_Alignments:
	input:
		query=opdir+"Novel_Contigs.fna",
		all_v_all=opdir+"Novel_Contigs."+config["genome_id"]+".All_V_All.txt"
	output:
		opdir+"containment_clusters.txt",
		opdir+"Representatives.fasta"
	params:
		d=opdir
	conda: "hotsprings_utils"
	resources:
		mem_mb=64000
	shell:
		"""
		python Utils/Clustering/Cluster_Novel_Contigs.py -a {input.all_v_all} -O {params.d} -s {input.query} -c 90 -n 5 -r 75 -l 500
		"""

rule Make_BlastDB_References:
	input:
		opdir+"References.fasta",
	output:
		directory(opdir+"BLAST_DB_References/"),
		done=touch(opdir+"BLAST_DB_References/BLAST_DB_References.makeblastdb.done")
	params:
		db=opdir+"BLAST_DB_References/References.db"
	resources:
		mem_mb=8000
	shell:
		"""
		module load blast
		makeblastdb -dbtype nucl -in {input} -input_type fasta -parse_seqids -out {params.db}
		"""	   

rule BLAST_References_Alignment:
	input:
		done=opdir+"BLAST_DB_References/BLAST_DB_References.makeblastdb.done",
		query=opdir+"Representatives.fasta"
	params:
		db=opdir+"BLAST_DB_References/References.db"
	output:
		opdir+"Representatives."+config["genome_id"]+".blast"
	threads:
		int(config['threads'])
	resources:
		mem_mb=8000
	shell:
		"""
		module load blast
		blastn -db {params.db} -query {input.query} \
		-out {output} -num_threads {threads} \
		-outfmt "6 qseqid sseqid pident length mismatch gapopen qlen qstart qend slen sstart send evalue bitscore" 
		"""

rule Run_Prodigal:
	input:
		opdir+"Representatives.fasta"
	output:
		directory(opdir+"Prodigal/"),
		faa=opdir+"Prodigal/Representatives_Prodigal.faa",
		fna=opdir+"Prodigal/Representatives_Prodigal.fna",
		logs=opdir+"Prodigal/Representatives_Prodigal.out",
	resources:
		mem_mb=16000
	shell:
		"""
		module load prodigal
		prodigal -i {input} -a {output.faa} -d {output.fna} -o {output.logs}
		"""

rule EggNOG_Annotations:
	input:
		eggnog_db=config["eggnog_db"],
		prodigal=opdir+"Prodigal/Representatives_Prodigal.faa",
	output:
		annotations=opdir+"EggNOG/Representatives.eggnog.out.emapper.annotations",
		orthologs=opdir+"EggNOG/Representatives.eggnog.out.emapper.seed_orthologs",
		hits=opdir+"EggNOG/Representatives.eggnog.out.emapper.hits",
	params:
		out=opdir+"EggNOG/Representatives.eggnog.out",
	conda: "hotsprings_utils"
	threads: int(config['threads'])
	shell:
		"""
		module load blast
		python3 -c "import sqlite3; print(sqlite3. sqlite_version)"
		emapper.py --version --data_dir {input.eggnog_db}
		emapper.py -m diamond --no_file_comments --cpu {threads} --data_dir {input.eggnog_db} \
		-i {input.prodigal} --output {params.out}
		"""

rule Summarize_EggNOG_Annotations:
	input:
		annotations=opdir+"EggNOG/Representatives.eggnog.out.emapper.annotations",
		clusters=opdir+"containment_clusters.txt",
		representatives_blast=opdir+"Representatives."+config["genome_id"]+".blast",
		Reference_Contigs=opdir+"Reference_Contigs.txt",
		representatives=opdir+"Representatives.fasta",
	output:
		filtered=opdir+"Filtered.Eggnog.Annotations.xlsx",
		filtered_fa=opdir+"Representatives.filtered.fa"
	conda: "hotsprings_utils"
	resources:
		mem_mb=8000
	params:
		outdir=opdir
	shell:
		"""
		python Utils/Clustering/Post_Process_EggNOG_Annotations.py -g {input.annotations} -c {input.clusters} \
																  -b {input.representatives_blast} -m {input.Reference_Contigs} \
																  -r {input.representatives} -o {params.outdir}
		"""

rule Build_Bowtie2_Index:
	input:
		opdir+"Representatives.filtered.fa"
	params:
		basename=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx"
	output:
		output1=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx.1.bt2",
		output2=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx.2.bt2",
		output3=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx.3.bt2",
		output4=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx.4.bt2",
		outputrev1=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx.rev.1.bt2",
		outputrev2=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx.rev.2.bt2",
		fai=opdir+"Filtered_Representatives_Idx/Representatives.filtered.fai"
	resources:
		mem_mb=8000
	shell:
		"""
		module load samtools/1.16
		module load bowtie2/2.4.1
		bowtie2-build {input} {params.basename}
		samtools faidx {input} -o {output.fai}
		"""

rule align_reads:
	input:
		reads_1=config["reads_dir"]+"{sample}/{sample}_R1.fq.gz",
		reads_2=config["reads_dir"]+"{sample}/{sample}_R2.fq.gz",
		output1=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx.1.bt2",
		output2=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx.2.bt2",
		output3=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx.3.bt2",
		output4=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx.4.bt2",
		outputrev1=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx.rev.1.bt2",
		outputrev2=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx.rev.2.bt2",
		fai=opdir+"Filtered_Representatives_Idx/Representatives.filtered.fai"
	threads:
		int(config['threads'])
	output:
		bedfile=opdir+"Filtered_Representative_Coverages/Bed_Files/{sample}.bed",
		bamfile=opdir+"Filtered_Representative_Coverages/Bam_Files/{sample}.bam",
		summary=opdir+"Filtered_Representative_Coverages/Summarized_Coverages/{sample}.txt"
	params:
		basename=opdir+"Filtered_Representatives_Idx/Representatives.filtered.idx",
	resources:
		mem_mb=32000
	conda: "hotsprings_utils"
	shell:
		"""
		module load samtools/1.16
		module load bowtie2/2.4.1
		module load bedtools/2.30
		bowtie2 --threads {threads} -x {params.basename} -U {input.reads_1},{input.reads_2} --no-unal | samtools view -bS > {output.bamfile}
		bamToBed -i {output.bamfile} > {output.bedfile}
		python Utils/Clustering/Estimate_Abundances_Variant_Contigs.py -b {output.bedfile} -f {input.fai} -s {wildcards.sample} -o {output.summary} 
		"""