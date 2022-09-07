#!/bin/bash
#SBATCH -J C_Cells_Rel_Abundance # Job name
#SBATCH -o C_Cells_Rel_Abundance.CIGAR.o%j # Name of Output File
#SBATCH -e C_Cells_Rel_Abundance.CIGAR.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=large
#SBATCH --mem=36gb
#SBATCH --ntasks=8
#SBATCH --array=1-34

module load samtools/1.7
module load bedtools/2.26.0
module load bowtie2/2.3.4
module load minimap
module load k8

wrkdir=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/C_Allele_Relative_Abundance_Aug/
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
mkdir ${c_out_dir}paf_files/

#bowtie2 --threads 8 -x ${c_idx} -U ${reads_dir}${sample}/QC_Filtered_Raw_Data/*.fastq.gz --no-unal | samtools view -bS > ${c_out_dir}bam_files/${sample}.bam
#samtools view -h ${c_out_dir}bam_files/${sample}.bam > ${c_out_dir}paf_files/${sample}.sam 
#/fs/cbcb-software/RedHat-7-x86_64/common/local/minimap/git_201907/src/minimap2/misc/paftools.js sam2paf ${c_out_dir}paf_files/${sample}.sam > ${c_out_dir}paf_files/${sample}.paf
bedtools bamtobed -i ${c_out_dir}bam_files/${sample}.bam -cigar  | cut -f 1,4,7 > ${c_out_dir}bed_files/${sample}.bed
#rm -rf ${c_out_dir}paf_files/${sample}.sam
#bedtools bamtofastq -i ${c_out_dir}bam_files/${sample}.bam -fq ${c_out_dir}read_files/${sample}.fq
#gzip ${c_out_dir}read_files/${sample}.fq

a_out_dir=${wrkdir}A_Allele_Alignments/
mkdir ${a_out_dir}
mkdir ${a_out_dir}bam_files/
mkdir ${a_out_dir}bed_files/
mkdir ${a_out_dir}paf_files/

#bowtie2 --threads 8 -x ${a_idx} -U ${c_out_dir}read_files/${sample}.fq.gz --no-unal | samtools view -bS > ${a_out_dir}bam_files/${sample}.bam
#samtools view -h ${a_out_dir}bam_files/${sample}.bam > ${a_out_dir}paf_files/${sample}.sam 
#/fs/cbcb-software/RedHat-7-x86_64/common/local/minimap/git_201907/src/minimap2/misc/paftools.js sam2paf ${a_out_dir}paf_files/${sample}.sam > ${a_out_dir}paf_files/${sample}.paf
bedtools bamtobed -i ${a_out_dir}bam_files/${sample}.bam -cigar  | cut -f 1,4,7 > ${a_out_dir}bed_files/${sample}.bed
#rm -rf ${a_out_dir}paf_files/${sample}.sam

b_out_dir=${wrkdir}B_Allele_Alignments/
mkdir ${b_out_dir}
mkdir ${b_out_dir}bam_files/
mkdir ${b_out_dir}bed_files/
mkdir ${b_out_dir}paf_files/

#bowtie2 --threads 8 -x ${b_idx} -U ${c_out_dir}read_files/${sample}.fq.gz --no-unal | samtools view -bS > ${b_out_dir}bam_files/${sample}.bam
#samtools view -h ${b_out_dir}bam_files/${sample}.bam > ${b_out_dir}paf_files/${sample}.sam 
#/fs/cbcb-software/RedHat-7-x86_64/common/local/minimap/git_201907/src/minimap2/misc/paftools.js sam2paf ${b_out_dir}paf_files/${sample}.sam > ${b_out_dir}paf_files/${sample}.paf
bedtools bamtobed -i ${b_out_dir}bam_files/${sample}.bam -cigar  | cut -f 1,4,7 > ${b_out_dir}bed_files/${sample}.bed
#rm -rf ${b_out_dir}paf_files/${sample}.sam