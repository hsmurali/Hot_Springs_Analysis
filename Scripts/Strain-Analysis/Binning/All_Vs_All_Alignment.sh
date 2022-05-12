#!/bin/bash
#SBATCH -J All_vs_All # Job name
#SBATCH -o All_vs_All.o%j # Name of Output File
#SBATCH -e All_vs_All.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=5-00:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb

module load bowtie2/2.3.0
module load samtools/1.5
module load bedtools/2.26.0

CONTIGS=${1}
READS=${2}

INDEX_PATH=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Contigs/${CONTIGS}_assembly/${CONTIGS}
CONTIGLEN=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Scaffolds/${CONTIGS}_scaffolds/contig_length
READS_PATH=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Reads/${READS}.fastq.gz
OPPATH=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/all_vs_all_alignments/
mkdir ${OPPATH}
OPFILE=${OPPATH}${CONTIGS}_${READS}

bowtie2 -x ${INDEX_PATH} -U ${READS_PATH} --no-unal | samtools view -bS - | samtools sort - -T ${OPPATH} -o ${OPFILE}.bam
genomeCoverageBed -bga -split -ibam ${OPFILE}.bam > ${OPFILE}_temp.txt
LC_ALL=C sort -k1,1 ${OPFILE}_temp.txt > ${OPFILE}.txt

rm ${OPFILE}_temp.txt
rm ${OPFILE}.bam