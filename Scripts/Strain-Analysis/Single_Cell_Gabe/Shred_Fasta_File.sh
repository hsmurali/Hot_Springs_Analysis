#!/bin/bash
#SBATCH -J Shred_Fasta_File # Job name
#SBATCH -o Shred_Fasta_File.o%j # Name of Output File
#SBATCH -e Shred_Fasta_File.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-100:00:00
#SBATCH --qos=xlarge
#SBATCH --mem=256gb

module load anaconda
source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/SCRAPT

Reads_Dir=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/C_Allele_Relative_Abundance_Sep/BLAST_Comparison/
outdir=${Reads_Dir}
sample=${1}

mkdir ${outdir}${sample}_Splits/
seqkit split ${Reads_Dir}${sample}.fasta -p 25 -O ${outdir}${sample}_Splits/ --two-pass
