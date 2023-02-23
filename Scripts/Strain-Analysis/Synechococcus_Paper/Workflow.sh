#!/bin/bash

indx_path=${1}
length=${2}
sample=${3}
reads_1=${4}
reads_2=${5}
out_dir=${6}
genome=${7}
genome_ref=${8}

mkdir ${out_dir}${sample}/
mkdir ${out_dir}${sample}/Alignments/

#####Align All Reads to reference genome
bowtie2 --threads 32 -x ${indx_path} -1 ${reads_1} -2 ${reads_2} | samtools view -bS > ${out_dir}${sample}/Alignments/alignments.bam
bamToBed -i ${out_dir}${sample}/Alignments/alignments.bam > ${out_dir}${sample}/Alignments/alignments.bed

#####Run Differential Read Counting
prog_dir=/fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/Differential_Read_Counting/bin/Differential_Read_Mapping.py
python ${prog_dir} -G1 ${genome} -G1_Len ${length} \
				   -mG1 ${out_dir}${sample}/Alignments/alignments.bed \
				   -out ${out_dir}${sample}/Differential_Read_Counting/ \
				   -start_only false -pre Genome.

#####Extract Reads Where Atleast one of the mates aligned to the genome
#####Extract reads where both mates in pair mapped
samtools view -b -F 12 ${out_dir}${sample}/Alignments/alignments.bam > ${out_dir}${sample}/Alignments/alignments_PE.bam

#####Extract reads where only one mate mapped
samtools view -b -F 4 -f 8 ${out_dir}${sample}/Alignments/alignments.bam  > ${out_dir}${sample}/Alignments/alignments_SE_1.bam
samtools view -b -F 8 -f 4 ${out_dir}${sample}/Alignments/alignments.bam  > ${out_dir}${sample}/Alignments/alignments_SE_2.bam

#####Merge all mapped reads
samtools merge ${out_dir}${sample}/Alignments/alignments_merged.bam \
${out_dir}${sample}/Alignments/alignments_PE.bam \
${out_dir}${sample}/Alignments/alignments_SE_1.bam \
${out_dir}${sample}/Alignments/alignments_SE_2.bam
samtools sort --threads 32 -n ${out_dir}${sample}/Alignments/alignments_merged.bam > ${out_dir}${sample}/Alignments/alignments_sorted.bam

#####Extract Reads
bedtools bamtofastq -i ${out_dir}${sample}/Alignments/alignments_sorted.bam \
					-fq ${out_dir}${sample}/Alignments/R1.fq \
					-fq2 ${out_dir}${sample}/Alignments/R2.fq
gzip ${out_dir}${sample}/Alignments/R1.fq
gzip ${out_dir}${sample}/Alignments/R2.fq

rm ${out_dir}${sample}/Alignments/alignments_merged.bam
rm ${out_dir}${sample}/Alignments/alignments_PE.bam
rm ${out_dir}${sample}/Alignments/alignments_SE_1.bam
rm ${out_dir}${sample}/Alignments/alignments_SE_2.bam
rm ${out_dir}${sample}/Alignments/alignments.bam

#####Reassemble Reads that align
contigs=${out_dir}${sample}/Megahit_Contigs/
prog_path=/cbcb/sw/RedHat-7-x86_64/users/meiselj/src/megahit/megahit
${prog_path} -1 ${out_dir}${sample}/Alignments/R1.fq.gz \
			 -2 ${out_dir}${sample}/Alignments/R2.fq.gz \
			 -o ${contigs} --k-max 141 --out-prefix final --verbose -t 32

#####DeNovo Scaffolding with MetaCarvel
scaffolds=${out_dir}${sample}/denovo_scaffolds/
mkdir ${scaffolds}
bowtie2-build ${contigs}/final.contigs.fa ${contigs}/contigs
bowtie2 --threads 32 -x ${contigs}/contigs \
		-U ${out_dir}${sample}/Alignments/R1.fq.gz,${out_dir}${sample}/Alignments/R2.fq.gz \
		--no-unal | samtools view -bS > ${scaffolds}/alignment.bam
samtools sort -n ${scaffolds}/alignment.bam -o ${scaffolds}/alignment.sorted.bam
rm ${scaffolds}/alignment.bam
PROG_PATH=/fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/MetaCarvel/run.py 
python ${PROG_PATH} -a ${contigs}/final.contigs.fa -m ${scaffolds}/alignment.sorted.bam -d ${scaffolds} -k true -r false

#####Ref-Guided Scaffolding
mkdir ${out_dir}${sample}/reference_guided_scaffolds/
prog_path=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Synechococcus_Paper/\
Reference_Guided_Scaffolding/Scaffold_References.py
python ${prog_path} -A ${contigs}/final.contigs.fa \
					-G1_Ref ${genome_ref} \
					-AG ${scaffolds}/oriented.gml \
					-O ${out_dir}${sample}/reference_guided_scaffolds/ \
					-pre Ref_Guided_Scaffolds. \
					-d 80 -G1 ${genome}
