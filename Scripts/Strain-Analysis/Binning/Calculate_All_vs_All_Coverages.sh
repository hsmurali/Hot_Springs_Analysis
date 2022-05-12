#!/bin/bash
#SBATCH -J Binnacle # Job name
#SBATCH -o Binnacle.o%j # Name of Output File
#SBATCH -e Binnacle.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=throughput
#SBATCH --mem=36gb

module load anaconda
source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/binnacle_env

contigs_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Contigs/
scaffolds_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Scaffolds/
out_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Binnacle/
abundance_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/all_vs_all_alignments/
sample=${1}
alignment=${2}

coordinates=${out_path}${sample}/Coords_After_Delinking.txt
abundance_path=${abundance_path}${alignment}.txt
output_path=${out_path}${sample}/

/usr/bin/time -v python /fs/cbcb-scratch/hsmurali/binnacle/src/Estimate_Abundances.py -o ${coordinates} -a ${abundance_path} -d ${output_path} -pre ${alignment}
