#!/bin/bash
#SBATCH -J Extract_BLAST # Job name
#SBATCH -o Extract_BLAST.o # Name of Output File
#SBATCH -e Extract_BLAST.e # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-100:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb
#SBATCH --ntasks=32

module load seqtk

outdir=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/C_Allele_Relative_Abundance_Sep/BLAST_Comparison/
reads_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Data/YNP_Hot_Springs/Reads_Reformatted/

sample=HotsprSampleMS50_FD
reads_1=${reads_dir}${sample}/${sample}_R1.fq.gz
reads_2=${reads_dir}${sample}/${sample}_R2.fq.gz
seqtk seq -A ${reads_1} > ${outdir}${sample}_R1.fasta
seqtk seq -A ${reads_2} > ${outdir}${sample}_R2.fasta
cat ${outdir}${sample}_R1.fasta ${outdir}${sample}_R2.fasta > ${outdir}MS50.fasta
rm -rf ${outdir}${sample}_R1.fasta 
rm -rf ${outdir}${sample}_R2.fasta

sample=HotsprSampleMS55_FD
reads_1=${reads_dir}${sample}/${sample}_R1.fq.gz
reads_2=${reads_dir}${sample}/${sample}_R2.fq.gz
seqtk seq -A ${reads_1} > ${outdir}${sample}_R1.fasta
seqtk seq -A ${reads_2} > ${outdir}${sample}_R2.fasta
cat ${outdir}${sample}_R1.fasta ${outdir}${sample}_R2.fasta > ${outdir}MS55.fasta
rm -rf ${outdir}${sample}_R1.fasta 
rm -rf ${outdir}${sample}_R2.fasta

sample=HotsprSampleMS60_FD
reads_1=${reads_dir}${sample}/${sample}_R1.fq.gz
reads_2=${reads_dir}${sample}/${sample}_R2.fq.gz
seqtk seq -A ${reads_1} > ${outdir}${sample}_R1.fasta
seqtk seq -A ${reads_2} > ${outdir}${sample}_R2.fasta
cat ${outdir}${sample}_R1.fasta ${outdir}${sample}_R2.fasta > ${outdir}MS60.fasta
rm -rf ${outdir}${sample}_R1.fasta 
rm -rf ${outdir}${sample}_R2.fasta

sample=HotsprSampleMS65_FD
reads_1=${reads_dir}${sample}/${sample}_R1.fq.gz
reads_2=${reads_dir}${sample}/${sample}_R2.fq.gz
seqtk seq -A ${reads_1} > ${outdir}${sample}_R1.fasta
seqtk seq -A ${reads_2} > ${outdir}${sample}_R2.fasta
cat ${outdir}${sample}_R1.fasta ${outdir}${sample}_R2.fasta > ${outdir}MS65.fasta
rm -rf ${outdir}${sample}_R1.fasta 
rm -rf ${outdir}${sample}_R2.fasta
