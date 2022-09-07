#!/bin/bash
#SBATCH -J C_Cells_Rel_Abundance # Job name
#SBATCH -o C_Cells_Rel_Abundance.o%j # Name of Output File
#SBATCH -e C_Cells_Rel_Abundance.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-100:00:00
#SBATCH --qos=large
#SBATCH --mem=36gb
#SBATCH --ntasks=32
#SBATCH --array=1-1

module load samtools/1.7
module load bedtools/2.26.0
module load bowtie2/2.3.4

wrkdir=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/C_Allele_Relative_Abundance_Aug
c_idx=${wrkdir}all_C_alleles.idx
a_idx=${wrkdir}A_allele.idx
b_idx=${wrkdir}Bp_Allele.idx
reads_dir=/fs/cbcb-data/hotspring_metagenome/
ls ${reads_dir} | grep "^Hot" > hotspring_samples.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples.txt | tail -n 1`

c_out_dir=${wrkdir}C_Allele_Alignments/
mkdir ${c_out_dir}
mkdir ${c_out_dir}bam_files/
mkdir ${c_out_dir}bed_files/
mkdir ${c_out_dir}read_files/

bowtie2 --threads 32 -x ${c_idx} -U ${reads_dir}${sample}/QC_Filtered_Raw_Data/*.fastq.gz --no-unal | samtools view -bS > ${c_out_dir}bam_files/${sample}.bam
bedtools bamtobed -i ${c_out_dir}bam_files/${sample}.bam > ${c_out_dir}bed_files/${sample}.bed
bedtools bamtofastq -i ${c_out_dir}bam_files/${sample}.bam -fq ${c_out_dir}read_files/${sample}.fq
gzip ${c_out_dir}read_files/${sample}.fq

a_out_dir=${wrkdir}A_Allele_Alignments/
mkdir ${a_out_dir}
mkdir ${a_out_dir}bam_files/
mkdir ${a_out_dir}bed_files/

bowtie2 --threads 32 -x ${a_idx} -U ${c_out_dir}read_files/${sample}.fq.gz --no-unal | samtools view -bS > ${a_out_dir}bam_files/${sample}.bam
bedtools bamtobed -i ${a_out_dir}bam_files/${sample}.bam > ${a_out_dir}bed_files/${sample}.bed

b_out_dir=${wrkdir}B_Allele_Alignments/
mkdir ${b_out_dir}
mkdir ${b_out_dir}bam_files/
mkdir ${b_out_dir}bed_files/

bowtie2 --threads 32 -x ${b_idx} -U ${c_out_dir}read_files/${sample}.fq.gz --no-unal | samtools view -bS > ${b_out_dir}bam_files/${sample}.bam
bedtools bamtobed -i ${b_out_dir}bam_files/${sample}.bam > ${b_out_dir}bed_files/${sample}.bed
