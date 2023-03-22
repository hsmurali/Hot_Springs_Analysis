#!/bin/bash
#SBATCH -J Make_BLAST_DB # Job name
#SBATCH -o Make_BLAST_DB.o%j # Name of Output File
#SBATCH -e Make_BLAST_DB.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=throughput
#SBATCH --mem=36

module load blast 

seq_path=${1}
out_path=${2}

echo ${seq_path}
echo ${out_path}
makeblastdb -in ${seq_path} -input_type fasta -parse_seqids -dbtype nucl -out ${out_path}
