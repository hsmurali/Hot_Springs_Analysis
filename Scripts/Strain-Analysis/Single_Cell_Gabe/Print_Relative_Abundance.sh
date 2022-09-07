#!/bin/bash
#SBATCH -J Summarize_C_Cell_Alignments # Job name
#SBATCH -o Summarize_C_Cell_Alignments.o%j # Name of Output File
#SBATCH -e Summarize_C_Cell_Alignments.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=throughput
#SBATCH --mem=36gb

module load anaconda
source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/hotsprings_utils/

outdir=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/C_Allele_Relative_Abundance_Aug/Filtered_Alignments
pident=${1}
mkdir ${outdir}
mkdir ${outdir}/Pident_${pident}/
mkdir ${outdir}/Pident_${pident}/A_Allele_Counts/
mkdir ${outdir}/Pident_${pident}/B_Allele_Counts/
mkdir ${outdir}/Pident_${pident}/C_Allele_Counts/

prog_dir=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Single_Cell_Gabe/Print_Relative_Abundances.py 

python ${prog_dir} ${outdir}/Pident_${pident}/ ${pident}