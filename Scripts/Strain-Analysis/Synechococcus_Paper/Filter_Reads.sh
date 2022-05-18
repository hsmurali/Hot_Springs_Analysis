#!/bin/bash
#SBATCH -J Filter_Novel_Reads # Job name
#SBATCH -o Filter_Novel_Reads.o%j # Name of Output File
#SBATCH -e Filter_Novel_Reads.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=large
#SBATCH --mem=36gb
#SBATCH --ntasks=8
#SBATCH --array=1-102

module load anaconda

source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/hotsprings_utils/

data_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/missing_contig_comparison/read_alignments/
prog_dir=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Synechococcus_Paper/Filter_Reads_Novel_Regions.py
outdir=${data_dir}Filtered_Reads/
mkdir ${outdir}

ls ${data_dir} | grep "^Hot" > hotspring_samples.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples.txt | tail -n 1`

python ${prog_dir} ${data_dir}${sample} 95.0 ${outdir}${sample}