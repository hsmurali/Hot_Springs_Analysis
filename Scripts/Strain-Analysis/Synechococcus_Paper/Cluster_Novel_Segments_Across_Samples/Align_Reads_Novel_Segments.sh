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

wrkpath=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Ref_Guided_Scaffolding_Clustering_Aug_2022/
feature_contigs=${wrkpath}BLAST_All_vs_All/Representatives_Filtered.fasta
reads_dir=/fs/cbcb-data/hotspring_metagenome/
outdir=${wrkpath}Read_Alignments_to_Novel_Contigs/
mkdir ${outdir}

ls ${reads_dir} | grep "^Hot" > hotspring_samples.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples.txt | tail -n 1`
sample=HotsprSampleR4cd_FD

#minimap2 -t 8 ${feature_contigs} ${reads_dir}${sample}/QC_Filtered_Raw_Data/*.fastq.gz > ${outdir}${sample}.paf

mkdir ${outdir}Summarized_Coverages/
prog_dir=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Synechococcus_Paper/Filter_Reads_Novel_Regions.py
python ${prog_dir} ${outdir}${sample}.paf 95.0 ${outdir}Summarized_Coverages/${sample}.txt