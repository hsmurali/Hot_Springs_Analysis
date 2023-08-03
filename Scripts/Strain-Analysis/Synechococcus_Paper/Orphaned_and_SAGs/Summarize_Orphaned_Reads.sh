#!/bin/bash
#SBATCH -J Orphaned_Reads # Job name
#SBATCH -o Orphaned_Reads.o%j # Name of Output File
#SBATCH -e Orphaned_Reads.e%j # Name of Error File
#SBATCH --time=10:00:00                                         
#SBATCH --qos=high                                           
#SBATCH --mem=128gb                                               
#SBATCH --partition=cbcb 
#SBATCH --account=cbcb 
#SBATCH --array=31
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=ALL # Get email for begin, end, and fail

module load conda
source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/binnacle_env/

genome=${1}

data_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Hotsprings_Variant_Structure/${genome}/

ls ${data_dir} | grep "Hot" > hotspring_samples_${genome}.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples_${genome}.txt | tail -n 1`

alignments=${data_dir}${sample}/denovo_scaffolds/alignment.bed
orphaned_reads=${data_dir}${sample}/Differential_Read_Counting/Genome.${genome}.orphaned_reads
out_path=${data_dir}${sample}/Differential_Read_Counting/${genome}.Orphaned_Reads.Summary

prog_path=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Synechococcus_Paper/Orphaned_Reads_Analysis/Summarize_Orphaned_Reads.py
python ${prog_path} ${alignments} ${orphaned_reads} ${out_path}
