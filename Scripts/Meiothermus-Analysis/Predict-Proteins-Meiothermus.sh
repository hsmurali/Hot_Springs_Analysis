#!/bin/bash
#SBATCH -J Predict-Proteins # Job name
#SBATCH -o Predict-Proteins.o%j # Name of Output File
#SBATCH -e Predict-Proteins.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=5-00:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb
#SBATCH --array=1-31

module load prodigal
BINSDIR=/fs/cbcb-lab/mpop/hotspring_metagenome/binned_contigs/metabat_all_v_all_output/meiothermus/
OPDIR=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/
mkdir ${OPDIR}meiothermus/
ls ${BINSDIR} > Commands.txt
cmd=`head -n ${SLURM_ARRAY_TASK_ID} Commands.txt | tail -n 1`
prodigal -i ${BINSDIR}${cmd} -o ${OPDIR}meiothermus/${cmd}.coords.gbk -a ${OPDIR}meiothermus/${cmd}.prot.faa -p meta
