#!/bin/bash
#SBATCH -J Run_BLAST # Job name
#SBATCH -o Run_BLAST.o%j # Name of Output File
#SBATCH -e Run_BLAST.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=throughput
#SBATCH --mem=8gb

module load blast

seq=${1}
allele_idx=${2}
out_path=${3}

blastn -query ${seq} -db ${allele_idx} -outfmt 6 -num_threads 32 -out ${out_path}