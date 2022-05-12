#!/bin/bash
#SBATCH -J Test_Align # Job name
#SBATCH -o Test_Align.o # Name of output file
#SBATCH -e Test_Align.e # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=all # Get email for begin, end, and fail
#SBATCH --time=0-18:00:00
#SBATCH --qos=throughput
#SBATCH --ntasks=8
#SBATCH --mem=36gb

module load bowtie2/2.3.4
module load samtools/1.5
module load bedtools/2.26.0

bt2_idx=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Valet/MS65/OSA/data/bowtie2_valet
lq_fastq_1=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Valet/MS65/OSA/data/lq_1.fq.gz
lq_fastq_2=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Valet/MS65/OSA/data/lq_2.fq.gz

bowtie2 -1 $lq_fastq_1 -2 $lq_fastq_2 -x --fr $bowtie2_index -p 8 -X 600 | samtools view -bS -o lq_paired.bam
bamToBed lq_paired.bam > lq_paired.bed