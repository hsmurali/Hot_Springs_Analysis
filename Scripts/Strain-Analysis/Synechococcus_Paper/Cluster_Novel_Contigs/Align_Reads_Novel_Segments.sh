#!/bin/bash
#SBATCH -J Novel_Contig_Reads_Hits # Job name
#SBATCH -o Novel_Contig_Reads_Hits.o%j # Name of Output File
#SBATCH -e Novel_Contig_Reads_Hits.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb
#SBATCH --ntasks=8
#SBATCH --array=1-34

module load minimap
module load anaconda
module load samtools

source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/hotsprings_utils

genome=${1}
WRKPTH=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/
READS_DIR=${WRKPTH}Data/YNP_Hot_Springs/Reads_Reformatted/
NOVEL_CONTIGS=${WRKPTH}/Hotsprings_Variant_Structure_Data_Analysis/${genome}/Representatives.fasta
OUTDIR=${WRKPTH}/Hotsprings_Variant_Structure_Data_Analysis/${genome}/Read_alignments_novel_contigs/
mkdir ${OUTDIR}

ls ${READS_DIR} | grep "^Hot" > hotspring_samples.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples.txt | tail -n 1`

reads_1=${READS_DIR}${sample}/${sample}_R1.fq.gz
reads_2=${READS_DIR}${sample}/${sample}_R2.fq.gz
minimap2 -t 8 ${NOVEL_CONTIGS} ${reads_1} ${reads_2} > ${OUTDIR}${sample}.paf

mkdir ${OUTDIR}Summarized_Coverages/
prog_dir=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Synechococcus_Paper/Cluster_Novel_Segments_Across_Samples/\
Filter_Reads_Novel_Regions.py 
python ${prog_dir} ${OUTDIR}${sample}.paf 95.0 ${OUTDIR}Summarized_Coverages/${sample}.txt
