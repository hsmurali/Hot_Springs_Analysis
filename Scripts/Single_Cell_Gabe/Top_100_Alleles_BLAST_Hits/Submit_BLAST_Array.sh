#!/bin/bash
#SBATCH --job-name=Run_BLAST
#SBATCH --output=Run_BLAST.out.%j
#SBATCH --error=Run_BLAST.err.%j
#SBATCH --time=1:00:00
#SBATCH --qos=high
#SBATCH --mem=32gb
#SBATCH --partition=cbcb 
#SBATCH --account=cbcb 
#SBATCH --array=2-1000

module load blast
batch=${1}
command=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/\
Single_Cell_Gabe/Top_100_Alleles_BLAST_Hits/Commands_Batch_Third_${batch}.txt

s=`head -n ${SLURM_ARRAY_TASK_ID} ${command} | tail -n 1`
bash ${s}
