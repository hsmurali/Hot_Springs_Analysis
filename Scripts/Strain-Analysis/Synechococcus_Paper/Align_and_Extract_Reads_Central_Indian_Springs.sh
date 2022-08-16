#!/bin/bash
#SBATCH -J map_reads_newzealand_springs # Job name
#SBATCH -o map_reads_newzealand_springs.o%j # Name of Output File
#SBATCH -e map_reads_newzealand_springs.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=FAIL
#SBATCH --time=100:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb
#SBATCH --ntasks=32
#SBATCH --array=2-6

module load samtools/1.7
module load bedtools/2.26.0
module load bowtie2/2.3.4

data_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Data/Central_India_Hotsprings/
out_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Central_India_Hotsprings_Analysis/
align_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Central_India_Hotsprings_Analysis/alignments/
reads_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Central_India_Hotsprings_Analysis/reads/

mkdir ${out_dir}
mkdir ${align_dir}
mkdir ${reads_dir}

ls ${data_dir} | grep "SRR" > New_Hotsprings_Samples.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} New_Hotsprings_Samples.txt | tail -n 1`
mkdir ${align_dir}${1}
mkdir ${align_dir}all_reads
mkdir ${reads_dir}${1}
mkdir ${reads_dir}${1}/${sample}

index_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Synechococcus_references/${1}_ref
reads_path=${data_dir}${sample}/${sample}_

#### Align Using Bowtie2
# samtools sort --threads 32 -T ${align_dir}all_reads/ -n |
bowtie2 --threads 32 -x ${index_path} -1 ${reads_path}1.fastq.gz -2 ${reads_path}2.fastq.gz | samtools view -bS > ${align_dir}all_reads/${sample}_${1}.bam

#### Extract reads where both mates in pair mapped
samtools view -b -F 12 ${align_dir}all_reads/${sample}_${1}.bam > ${align_dir}${1}/${sample}_PE.bam

#### Extract reads where only one mate mapped
samtools view -b -F 4 -f 8 ${align_dir}all_reads/${sample}_${1}.bam  > ${align_dir}${1}/${sample}_SE_1.bam
samtools view -b -F 8 -f 4 ${align_dir}all_reads/${sample}_${1}.bam  > ${align_dir}${1}/${sample}_SE_2.bam

#### Merge all mapped reads
samtools merge ${align_dir}${1}/${sample}_merged.bam ${align_dir}${1}/${sample}_PE.bam ${align_dir}${1}/${sample}_SE_1.bam ${align_dir}${1}/${sample}_SE_2.bam
samtools sort --threads 32 -n ${align_dir}${1}/${sample}_merged.bam > ${align_dir}${1}/${sample}_sorted.bam
	
rm ${align_dir}${1}/${sample}_merged.bam ${align_dir}${1}/${sample}_PE.bam ${align_dir}${1}/${sample}_SE_1.bam ${align_dir}${1}/${sample}_SE_2.bam

#### Convert mapped reads to fastq file 
bedtools bamtofastq -i ${align_dir}${1}/${sample}_sorted.bam -fq ${reads_dir}${1}/${sample}/${sample}_R1.fq -fq2 ${reads_dir}${1}/${sample}/${sample}_R2.fq
gzip ${reads_dir}${1}/${sample}/${sample}_R1.fq
gzip ${reads_dir}${1}/${sample}/${sample}_R2.fq
