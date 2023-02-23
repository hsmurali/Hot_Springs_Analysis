#!/bin/bash
#SBATCH -J 16S_Rel_Abundance # Job name
#SBATCH -o 16S_Rel_Abundance.CIGAR_SEP.o%j # Name of Output File
#SBATCH -e 16S_Rel_Abundance.CIGAR_SEP.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=large
#SBATCH --mem=36gb
#SBATCH --ntasks=16
#SBATCH --array=2-34

module load samtools/1.7
module load bedtools/2.26.0
module load bowtie2/2.3.4
module load minimap
module load k8

reads_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Data/YNP_Hot_Springs/Reads_Reformatted/
ls ${reads_dir} | grep "^Hot" > hotspring_samples.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples.txt | tail -n 1`

READS_1=${reads_dir}${sample}/${sample}_R1.fq.gz
READS_2=${reads_dir}${sample}/${sample}_R2.fq.gz

Idx_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/16S_Gene_Segments/
A_Allele_Idx=${Idx_dir}Alpha_16s
B_Allele_Idx=${Idx_dir}Beta_16s
C_Allele_Idx=${Idx_dir}Gamma_16s

paftools=/fs/cbcb-software/RedHat-7-x86_64/common/local/minimap/git_201907/src/minimap2/misc/paftools.js
Read_Alignments=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/16S_Read_Alignments/

######Aligning to 16S rRNA gene sequence of the A-allele
mkdir ${Read_Alignments}Alpha_Alleles/
mkdir ${Read_Alignments}Alpha_Alleles/bam_files/
mkdir ${Read_Alignments}Alpha_Alleles/bed_files/
mkdir ${Read_Alignments}Alpha_Alleles/paf_files/

bowtie2 --threads 16 -x ${A_Allele_Idx} -U ${READS_1},${READS_2} --no-unal | samtools view -bS > ${Read_Alignments}Alpha_Alleles/bam_files/${sample}.bam
samtools view -h ${Read_Alignments}Alpha_Alleles/bam_files/${sample}.bam > ${Read_Alignments}Alpha_Alleles/paf_files/${sample}.sam
${paftools} sam2paf ${Read_Alignments}Alpha_Alleles/paf_files/${sample}.sam > ${Read_Alignments}Alpha_Alleles/paf_files/${sample}.paf
bedtools bamtobed -i ${Read_Alignments}Alpha_Alleles/bam_files/${sample}.bam -cigar  | cut -f 1,4,7 > ${Read_Alignments}Alpha_Alleles/bed_files/${sample}.bed
rm -rf ${Read_Alignments}Alpha_Alleles/paf_files/${sample}.sam

######Aligning to 16S rRNA gene sequence of the B-allele
mkdir ${Read_Alignments}Beta_Alleles/
mkdir ${Read_Alignments}Beta_Alleles/bam_files/
mkdir ${Read_Alignments}Beta_Alleles/bed_files/
mkdir ${Read_Alignments}Beta_Alleles/paf_files/

bowtie2 --threads 16 -x ${B_Allele_Idx} -U ${READS_1},${READS_2} --no-unal | samtools view -bS > ${Read_Alignments}Beta_Alleles/bam_files/${sample}.bam
samtools view -h ${Read_Alignments}Beta_Alleles/bam_files/${sample}.bam > ${Read_Alignments}Beta_Alleles/paf_files/${sample}.sam
${paftools} sam2paf ${Read_Alignments}Beta_Alleles/paf_files/${sample}.sam > ${Read_Alignments}Beta_Alleles/paf_files/${sample}.paf
bedtools bamtobed -i ${Read_Alignments}Beta_Alleles/bam_files/${sample}.bam -cigar  | cut -f 1,4,7 > ${Read_Alignments}Beta_Alleles/bed_files/${sample}.bed
rm -rf ${Read_Alignments}Beta_Alleles/paf_files/${sample}.sam

######Aligning to 16S rRNA gene sequence of the C-allele
mkdir ${Read_Alignments}Gamma_Alleles/
mkdir ${Read_Alignments}Gamma_Alleles/bam_files/
mkdir ${Read_Alignments}Gamma_Alleles/bed_files/
mkdir ${Read_Alignments}Gamma_Alleles/paf_files/

bowtie2 --threads 16 -x ${C_Allele_Idx} -U ${READS_1},${READS_2} --no-unal | samtools view -bS > ${Read_Alignments}Gamma_Alleles/bam_files/${sample}.bam
samtools view -h ${Read_Alignments}Gamma_Alleles/bam_files/${sample}.bam > ${Read_Alignments}Gamma_Alleles/paf_files/${sample}.sam
${paftools} sam2paf ${Read_Alignments}Gamma_Alleles/paf_files/${sample}.sam > ${Read_Alignments}Gamma_Alleles/paf_files/${sample}.paf
bedtools bamtobed -i ${Read_Alignments}Gamma_Alleles/bam_files/${sample}.bam -cigar  | cut -f 1,4,7 > ${Read_Alignments}Gamma_Alleles/bed_files/${sample}.bed
rm -rf ${Read_Alignments}Gamma_Alleles/paf_files/${sample}.sam
