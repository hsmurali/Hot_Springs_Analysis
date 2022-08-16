#!/bin/bash
#SBATCH -J Bowtie-Align-Synechococcus # Job name
#SBATCH -o Bowtie-Align-Synechococcus.o # Name of output file
#SBATCH -e Bowtie-Align-Synechococcus.e # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=all # Get email for begin, end, and fail
#SBATCH --time=5-00:00:00
#SBATCH --qos=large
#SBATCH --ntasks=5
#SBATCH --mem=128gb

module load bowtie2/2.3.4
module load samtools/1.5
module load bedtools/2.26.0

OS_PATH=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Synechococcus_references/
OSA_PATH=${OS_PATH}Synechococcus_OS-A_genome.fasta
OSB_PATH=${OS_PATH}Synechococcus_OS-B_genome.fasta
READS=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Reads/${1}.fastq.gz
OUTDIR=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Synechococcus_Alignments/
mkdir ${OUTDIR}
mkdir ${OUTDIR}${1}/

#Build-Index
bowtie2-build ${OSA_PATH} ${OS_PATH}OSA
bowtie2-build ${OSB_PATH} ${OS_PATH}OSB

#Align Reads
bowtie2 -x ${OS_PATH}OSA -U ${READS} --no-unal | samtools view -bS | samtools sort -n > ${OUTDIR}${1}/OSA.bam
bamToBed -i ${OUTDIR}${1}/OSA.bam > ${OUTDIR}${1}/OSA.bed
bowtie2 -x ${OS_PATH}OSB -U ${READS} --no-unal | samtools view -bS | samtools sort -n > ${OUTDIR}${1}/OSB.bam
bamToBed -i ${OUTDIR}${1}/OSB.bam > ${OUTDIR}${1}/OSB.bed