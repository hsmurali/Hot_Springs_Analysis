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
scaffolds_path=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scaffolds/
out_path=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Binnacle/
mkdir ${out_path}

sample=${1}

contigs=${contigs_path}${sample}_assembly/${sample}.contigs.fa
abundance_path=${scaffolds_path}${sample}_scaffolds/${sample}.txt
graph_path=${scaffolds_path}${sample}_scaffolds/oriented.gml
output_path=${out_path}${sample}/

/usr/bin/time -v python /fs/cbcb-scratch/hsmurali/binnacle/src/Estimate_Abundances.py -g ${graph_path} -a ${abundance_path} -c ${contigs} -d ${output_path} -pre ${sample}
