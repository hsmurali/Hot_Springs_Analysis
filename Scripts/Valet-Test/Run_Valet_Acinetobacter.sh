#!/bin/bash
#SBATCH -J Diff_Coverage # Job name
#SBATCH -o Diff_Coverage.o%j # Name of output file
#SBATCH -e Diff_Coverage.e%j # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=all # Get email for begin, end, and fail
#SBATCH --time=0-18:00:00
#SBATCH --qos=throughput
#SBATCH --ntasks=8
#SBATCH --mem=36gb

module load gcc/9.3.0

sample=${1}
BED_PATH=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Valet/OS_Sorted/
OPDIR=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Differential_Read_Counting/
mdkir ${OPDIR}
mkdir ${OPDIR}${sample}/
OSA_fai=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Synechococcus_references/Synechococcus_OS-A_genome.fasta.fai
OSB_fai=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Synechococcus_references/Synechococcus_OS-B_genome.fasta.fai
PROG_DIR=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Differential_Read_Counting/bin/Test

${PROG_DIR} ${BED_PATH}${sample}.OSA.bed OSA ${BED_PATH}${sample}.OSB.bed OSB ${OPDIR}${SAMPLE}/${SAMPLE}. true 120 ${OSA_fai} ${OSB_fai}