#!/bin/bash
#SBATCH --job-name=Summarize_BLAST_Hits
#SBATCH --output=Summarize_BLAST_Hits.out.%j
#SBATCH --error=Summarize_BLAST_Hits.err.%j
#SBATCH --time=00:10:00
#SBATCH --qos=high
#SBATCH --mem=32gb
#SBATCH --partition=cbcb 
#SBATCH --account=cbcb 
#SBATCH --mail-user=hsmurali@terpmail.umd.edu 
#SBATCH --mail-type=FAIL
#SBATCH --array=1-124

module load conda
source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/binnacle_env/
commands=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/\
Single_Cell_Gabe/Top_30_Alleles_BLAST_Hits/Commands_Summarize_BLAST_Top_30_Alleles.txt

s=`head -n ${SLURM_ARRAY_TASK_ID} ${commands} | tail -n 1`
python ${s}