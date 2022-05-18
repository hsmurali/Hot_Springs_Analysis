#!/bin/bash
#SBATCH -J Filter_Novel_Reads # Job name
#SBATCH -o Filter_Novel_Reads.o # Name of Output File
#SBATCH -e Filter_Novel_Reads.e # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=large
#SBATCH --mem=36gb
#SBATCH --ntasks=8

module load anaconda

source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/hotsprings_utils/

data_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/missing_contig_comparison/read_alignments/
prog_dir=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Synechococcus_Paper/Filter_Reads_Novel_Regions.py

python ${prog_dir} ${data_dir} 95.0