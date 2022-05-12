#!/bin/bash
#SBATCH -J Assemble-Scaffold # Job name
#SBATCH -o Assemble-Scaffold.o%j # Name of output file
#SBATCH -e Assemble-Scaffold.e%j # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=all # Get email for begin, end, and fail
#SBATCH --time=5-00:00:00
#SBATCH --qos=large
#SBATCH --ntasks=5
#SBATCH --mem=128gb

module use /cbcb/sw/RedHat-7-x86_64/users/meiselj/modules
module load megahit/1.1.2
module load bowtie2/2.3.0
module load samtools/1.5
module load bedtools/2.26.0
module load anaconda

#mkdir /fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Contigs/
mkdir /fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scaffolds/

SAMPLE=${1}
READS=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Reads/${SAMPLE}.fastq.gz
echo ${READS}

# Assemble Reads
CONTIGS=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Contigs/${SAMPLE}_assembly
#/cbcb/sw/RedHat-7-x86_64/users/meiselj/src/megahit/megahit --12 ${READS} -o ${CONTIGS} --k-max 141 --out-prefix ${SAMPLE} --verbose -t 24

# Align unassembled reads to contigs
SCAFFOLDS=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scaffolds/${SAMPLE}_scaffolds
mkdir ${SCAFFOLDS}
bowtie2-build ${CONTIGS}/${SAMPLE}.contigs.fa ${CONTIGS}/${SAMPLE}
bowtie2 -x ${CONTIGS}/${SAMPLE} -U ${READS} --no-unal | samtools view -bS > ${SCAFFOLDS}/${SAMPLE}_merged.bam
samtools sort -n ${SCAFFOLDS}/${SAMPLE}_merged.bam -o ${SCAFFOLDS}/${SAMPLE}_merged_sorted.bam 
rm ${SCAFFOLDS}/${SAMPLE}_merged.bam

# Scaffolding
source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/binnacle_env/
python /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/MetaCarvel/run.py -a ${CONTIGS}/${SAMPLE}.contigs.fa -m ${SCAFFOLDS}/${SAMPLE}_merged_sorted.bam -d ${SCAFFOLDS} -k true -r true
python /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/MetaCarvel/find_motifs.py -d ${SCAFFOLDS}

# Estimating Coverages
sort -k 1,1 ${SCAFFOLDS}/alignment.bed | genomeCoverageBed -bga -split -i  stdin -g  ${SCAFFOLDS}/contig_length >  ${SCAFFOLDS}/Coverage_Temp.txt
LC_ALL=C sort -k 1,1  ${SCAFFOLDS}/Coverage_Temp.txt >  ${SCAFFOLDS}/${SAMPLE}.txt
rm ${SCAFFOLDS}/Coverage_Temp.txt