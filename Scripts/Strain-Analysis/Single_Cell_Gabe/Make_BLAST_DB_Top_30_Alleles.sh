#!/bin/bash
#SBATCH -J Make_BLAST_DB # Job name
#SBATCH -o Make_BLAST_DB.o%j # Name of Output File
#SBATCH -e Make_BLAST_DB.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=large
#SBATCH --mem=36gb
#SBATCH --array=1

module load blast 

datadir=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/C_Allele_Relative_Abundance_Sep/BLAST_Comparison/A_Alleles/
ls ${datadir} > A_Alleles.txt
allele=`head -n ${SLURM_ARRAY_TASK_ID} A_Alleles.txt | tail -n 1`

echo ${allele}

seq_path=${datadir}${allele}/${allele}.fasta
makeblastdb -in ${seq_path} -parse_seqids -dbtype nucl -out ${datadir}${allele}/idx