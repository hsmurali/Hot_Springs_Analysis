#!/bin/bash
#SBATCH -J Hotsprings-Workflow # Job name
#SBATCH -o Hotsprings-Workflow.o%j # Name of Output File
#SBATCH -e Hotsprings-Workflow.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=100:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb
#SBATCH --ntasks=32
#SBATCH --array=15-16

module use /cbcb/sw/RedHat-7-x86_64/users/meiselj/modules

module load minimap
module load anaconda
module load samtools/1.7
module load bowtie2/2.3.4
module load megahit/1.1.2
module load bedtools/2.26.0

source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/binnacle_env/

WRKPTH=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/
READS_DIR=${WRKPTH}Data/YNP_Hot_Springs/Reads_Reformatted/

ls ${READS_DIR} | grep "^Hot" > Hotspring_Samples.txt
s=`head -n ${SLURM_ARRAY_TASK_ID} Hotspring_Samples.txt | tail -n 1`

indx_path=${WRKPTH}Data/YNP_Hot_Springs/Ref_Genomes_Not_Syn/Chloracidobacterium_thermophilum_B
length=${WRKPTH}Data/YNP_Hot_Springs/Ref_Genomes_Not_Syn/Chloracidobacterium_thermophilum_B.fna.fai
sample=${s}
reads_1=${READS_DIR}${sample}/${sample}_R1.fq.gz
reads_2=${READS_DIR}${sample}/${sample}_R2.fq.gz
out_dir=${WRKPTH}Hotsprings_Variant_Structure/
mkdir ${out_dir}
mkdir ${out_dir}Chloracidobacterium_thermophilum_B/
genome=Chloracidobacterium_thermophilum_B
genome_ref=${WRKPTH}Data/YNP_Hot_Springs/Ref_Genomes_Not_Syn/Chloracidobacterium_thermophilum_B.fna

wflow=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Synechococcus_Paper/Workflow.sh
/usr/bin/time -v bash ${wflow} ${indx_path} ${length} ${sample} ${reads_1} ${reads_2} ${out_dir}Chloracidobacterium_thermophilum_B/ ${genome} ${genome_ref}
