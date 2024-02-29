#!/bin/bash
#SBATCH -J BLAST # Job name
#SBATCH -o BLAST.o%j # Name of Output File
#SBATCH -e BLAST.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-100:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb
#SBATCH --ntasks=32

module load blast
module load samtools
module load minimap
module load k8
module load seqtk

paftools=/fs/cbcb-software/RedHat-7-x86_64/common/local/minimap/git_201907/src/minimap2/misc/paftools.js
reads_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Data/YNP_Hot_Springs/Reads_Reformatted/
out_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/16S_Blast_Alignments/

sample=${1} #HotsprSampleMS60_FD
reads_1=${reads_dir}${sample}/${sample}_R1.fq.gz
reads_2=${reads_dir}${sample}/${sample}_R2.fq.gz
seqtk seq -A ${reads_1} > ${out_dir}${sample}_R1.fasta
seqtk seq -A ${reads_2} > ${out_dir}${sample}_R2.fasta
cat ${out_dir}${sample}_R1.fasta ${out_dir}${sample}_R2.fasta > ${out_dir}${sample}.fasta
rm -rf ${out_dir}${sample}_R1.fasta 
rm -rf ${out_dir}${sample}_R2.fasta

alpha_db=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/16S_Gene_Segments/Synechococcus_Alpha_16SrRNA.fna
mkdir ${out_dir}Alpha_Alleles/
mkdir ${out_dir}Alpha_Alleles/bam_files/
mkdir ${out_dir}Alpha_Alleles/paf_files/

blastn -query ${out_dir}${sample}.fasta -db ${alpha_db} -outfmt 17 -num_threads 32 -out ${out_dir}Alpha_Alleles/bam_files/${sample}.sam 
${paftools} sam2paf ${out_dir}Alpha_Alleles/bam_files/${sample}.sam > ${out_dir}Alpha_Alleles/paf_files/${sample}.paf
samtools view -bS ${out_dir}Alpha_Alleles/bam_files/${sample}.sam > ${out_dir}Alpha_Alleles/bam_files/${sample}.bam
rm ${out_dir}Alpha_Alleles/bam_files/${sample}.sam

beta_db=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/16S_Gene_Segments/Synechococcus_Beta_16SrRNA.fna
mkdir ${out_dir}Beta_Alleles/
mkdir ${out_dir}Beta_Alleles/bam_files/
mkdir ${out_dir}Beta_Alleles/paf_files/

blastn -query ${out_dir}${sample}.fasta -db ${beta_db} -outfmt 17 -num_threads 32 -out ${out_dir}Beta_Alleles/bam_files/${sample}.sam 
${paftools} sam2paf ${out_dir}Beta_Alleles/bam_files/${sample}.sam > ${out_dir}Beta_Alleles/paf_files/${sample}.paf
samtools view -bS ${out_dir}Beta_Alleles/bam_files/${sample}.sam > ${out_dir}Beta_Alleles/bam_files/${sample}.bam
rm ${out_dir}Beta_Alleles/bam_files/${sample}.sam

gamma_db=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/16S_Gene_Segments/Synechococcus_Gamma_16SrRNA.fna
mkdir ${out_dir}Gamma_Alleles/
mkdir ${out_dir}Gamma_Alleles/bam_files/
mkdir ${out_dir}Gamma_Alleles/paf_files/

blastn -query ${out_dir}${sample}.fasta -db ${gamma_db} -outfmt 17 -num_threads 32 -out ${out_dir}Gamma_Alleles/bam_files/${sample}.sam 
${paftools} sam2paf ${out_dir}Gamma_Alleles/bam_files/${sample}.sam > ${out_dir}Gamma_Alleles/paf_files/${sample}.paf
samtools view -bS ${out_dir}Gamma_Alleles/bam_files/${sample}.sam > ${out_dir}Gamma_Alleles/bam_files/${sample}.bam
rm ${out_dir}Gamma_Alleles/bam_files/${sample}.sam

rm ${out_dir}${sample}.fasta
