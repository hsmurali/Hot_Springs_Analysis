from os import listdir

configfile: "/fs/cbcb-scratch/hsmurali/config.json"
reads_dir=config['reads_dir']
files = listdir(reads_dir)
samples = []
for s in files:
    if s.startswith("Hot"):
        samples.append(s)

rule all:
    input:
        expand(config["out_dir"]+"{sample}/Megahit_Contigs/final.contigs.fa", sample=samples),
        expand(config["out_dir"]+"{sample}/reference_guided_scaffolds/Ref_Guided_Scaffolds_"+config["genome"]+".txt", sample=samples),
        expand(config["out_dir"]+"{sample}/Differential_Read_Counting/"+config["genome"]+".Orphaned_Reads.Summary", sample=samples),
        expand(config["out_dir"]+"{sample}/Differential_Read_Counting/Genome."+config["genome"]+".Coverage",sample=samples),
        expand(config["out_dir"]+"{sample}/Differential_Read_Counting/Genome."+config["genome"]+".orphaned_reads",sample=samples),
        expand(config["out_dir"]+"{sample}/Differential_Read_Counting/Genome."+config["genome"]+".Summary",sample=samples)

rule build_index:
    input:
        config["genome_file_path"]
    params:
        basename=config["out_dir"]+config["genome"]+".idx"
    output:
        output1=config["out_dir"]+config["genome"]+".idx.1.bt2",
        output2=config["out_dir"]+config["genome"]+".idx.2.bt2",
        output3=config["out_dir"]+config["genome"]+".idx.3.bt2",
        output4=config["out_dir"]+config["genome"]+".idx.4.bt2",
        outputrev1=config["out_dir"]+config["genome"]+".idx.rev.1.bt2",
        outputrev2=config["out_dir"]+config["genome"]+".idx.rev.2.bt2",
        fai=config["out_dir"]+config["genome"]+".fai"
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
        output1=config["out_dir"]+config["genome"]+".idx.1.bt2",
        output2=config["out_dir"]+config["genome"]+".idx.2.bt2",
        output3=config["out_dir"]+config["genome"]+".idx.3.bt2",
        output4=config["out_dir"]+config["genome"]+".idx.4.bt2",
        outputrev1=config["out_dir"]+config["genome"]+".idx.rev.1.bt2",
        outputrev2=config["out_dir"]+config["genome"]+".idx.rev.2.bt2",
    params:
        basename=config["out_dir"]+config["genome"]+".idx"
    threads:
        int(config['threads'])
    output:
        bamfile=config["out_dir"]+"{sample}/Alignments/alignments.bam",
        bedfile=config["out_dir"]+"{sample}/Alignments/alignments.bed"
    shell:
        """
        module load samtools/1.16
        module load bowtie2/2.4.1
        module load bedtools/2.30
        bowtie2 --threads {threads} -x {params.basename} -1 {input.reads_1} -2 {input.reads_2} | samtools view -bS > {output.bamfile}
        bamToBed -i {output.bamfile} > {output.bedfile}
        """

rule Diff_Read_Counting:
    input:
        len=config["out_dir"]+config["genome"]+".fai",
        bed=config["out_dir"]+"{sample}/Alignments/alignments.bed"
    params:
        G=config["genome"],
        prog="/fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/Differential_Read_Counting/bin/Differential_Read_Mapping.py",
    output:
        directory(config["out_dir"]+"{sample}/Differential_Read_Counting/"),
        config["out_dir"]+"{sample}/Differential_Read_Counting/Genome."+config["genome"]+".Coverage",
        config["out_dir"]+"{sample}/Differential_Read_Counting/Genome."+config["genome"]+".Diff.Frag.Lengths",
        config["out_dir"]+"{sample}/Differential_Read_Counting/Genome."+config["genome"]+".Mispaired",
        config["out_dir"]+"{sample}/Differential_Read_Counting/Genome."+config["genome"]+".orphaned_reads",
        config["out_dir"]+"{sample}/Differential_Read_Counting/Genome."+config["genome"]+".Same.Frag.Lengths",
        config["out_dir"]+"{sample}/Differential_Read_Counting/Genome."+config["genome"]+".Summary",
    shell:
        "python {params.prog} -G1 {params.G} -G1_Len {input.len} -mG1 {input.bed} -out {output} -start_only false -pre {params.G}."
        
rule Extract_Alignments:
    input:
        bam=config["out_dir"]+"{sample}/Alignments/alignments.bam",
    threads:
        int(config["threads"])
    params:
        PE=config["out_dir"]+"{sample}/Alignments/alignments_PE.bam",
        SE_1=config["out_dir"]+"{sample}/Alignments/alignments_SE_1.bam",
        SE_2=config["out_dir"]+"{sample}/Alignments/alignments_SE_2.bam",
        merged=config["out_dir"]+"{sample}/Alignments/alignments_merged.bam",
    output:
        sort_bam=config["out_dir"]+"{sample}/Alignments/alignments_sorted.bam"
    shell:
        """
        module load samtools/1.16
        samtools view --threads {threads} -b -F 12 {input.bam} > {params.PE}
        samtools view --threads {threads} -b -F 4 -f 8 {input.bam} > {params.SE_1}
        samtools view --threads {threads} -b -F 8 -f 4 {input.bam} > {params.SE_2}
        samtools merge {params.merged} {params.PE} {params.SE_1} {params.SE_2}
        samtools sort --threads {threads} -n {params.merged} > {output.sort_bam}
        rm {input.bam}
        rm {params.PE}
        rm {params.SE_1}
        rm {params.SE_2}
        rm {params.merged}
        """

rule Extract_Reads:
    input:
        bam=config["out_dir"]+"{sample}/Alignments/alignments_sorted.bam"
    params:
        fq1=config["out_dir"]+"{sample}/Alignments/R1.fq",
        fq2=config["out_dir"]+"{sample}/Alignments/R2.fq"
    output:
        fq1_gz=config["out_dir"]+"{sample}/Alignments/R1.fq.gz",
        fq2_gz=config["out_dir"]+"{sample}/Alignments/R2.fq.gz"
    shell:
        """
        module load bedtools/2.30
        bedtools bamtofastq -i {input.bam} -fq {params.fq1} -fq2 {params.fq2}
        gzip {params.fq1}
        gzip {params.fq2}
        """

rule Reassemble:
    input:
        fq1_gz=config["out_dir"]+"{sample}/Alignments/R1.fq.gz",
        fq2_gz=config["out_dir"]+"{sample}/Alignments/R2.fq.gz"
    threads:
        int(config["threads"])   
    params:
        prog="/cbcb/sw/RedHat-7-x86_64/users/meiselj/src/megahit/megahit"
    output:
        opdir=directory(config["out_dir"]+"{sample}/Megahit_Contigs/"),
        contigs=config["out_dir"]+"{sample}/Megahit_Contigs/final.contigs.fa"
    conda:
        "binnacle_env"
    shell:
        """
        {params.prog} -f -1 {input.fq1_gz} -2 {input.fq2_gz} -o {output.opdir} --k-max 141 --out-prefix final --verbose -t {threads}
        """

rule Denovo_Scaffolding:
    input:
        assembly=config["out_dir"]+"{sample}/Megahit_Contigs/final.contigs.fa",
        R1=config["out_dir"]+"{sample}/Alignments/R1.fq.gz",
        R2=config["out_dir"]+"{sample}/Alignments/R2.fq.gz"
    params:
        prog="/fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/MetaCarvel/run.py",
        basename=config["out_dir"]+"{sample}/Megahit_Contigs/contigs",
    output:
        opdir=directory(config["out_dir"]+"{sample}/denovo_scaffolds/"),    
        graph=config["out_dir"]+"{sample}/denovo_scaffolds/oriented.gml",
        bed=config["out_dir"]+"{sample}/denovo_scaffolds/alignment.bed"
    conda: "binnacle_env"
    threads:
        int(config["threads"])
    shell:
        """
        module load bowtie2/2.4.1
        bowtie2-build {input.assembly} {params.basename}
        bowtie2 --threads {threads} -x {params.basename} -U {input.R1},{input.R2} --no-unal | samtools view -bS > {output.opdir}/alignment.bam
        samtools sort -n {output.opdir}/alignment.bam -o {output.opdir}/alignment.sorted.bam
        rm {output.opdir}/alignment.bam
        python {params.prog} -a {input.assembly} -m {output.opdir}/alignment.sorted.bam -d {output.opdir} -k true -r false
        """

rule Calculate_Orphaned_Reads_Statistics:
    input:
        bed=config["out_dir"]+"{sample}/denovo_scaffolds/alignment.bed",
        orphaned_reads=config["out_dir"]+"{sample}/Differential_Read_Counting/Genome."+config["genome"]+".orphaned_reads"
    output:
        config["out_dir"]+"{sample}/Differential_Read_Counting/"+config["genome"]+".Orphaned_Reads.Summary"
    conda: "binnacle_env"
    params:
        prog="Hot_Springs_Analysis/Scripts/Strain-Analysis/Synechococcus_Paper/Orphaned_Reads_Analysis/Summarize_Orphaned_Reads.py"
    shell:
        """
        python {params.prog} {input.bed} {input.orphaned_reads} {output}
        """

rule Reference_Guided_Scaffolding:
    input:
        assembly=config["out_dir"]+"{sample}/Megahit_Contigs/final.contigs.fa",
        graph=config["out_dir"]+"{sample}/denovo_scaffolds/oriented.gml",
    params:
        prog="/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Synechococcus_Paper/Reference_Guided_Scaffolding/Scaffold_References.py",
        genome_ref=config["genome_file_path"],
        genome=config["genome"],
    output:
        opdir=directory(config["out_dir"]+"{sample}/reference_guided_scaffolds/"),
        variant=config["out_dir"]+"{sample}/reference_guided_scaffolds/Ref_Guided_Scaffolds_"+config["genome"]+".txt"
    conda:
        "binnacle_env"
    shell:
        """
        python {params.prog} -A {input.assembly} -G1_Ref {params.genome_ref} -AG {input.graph} -G1 {params.genome} -pre Ref_Guided_Scaffolds_ -d 80 -O {output.opdir}
        """