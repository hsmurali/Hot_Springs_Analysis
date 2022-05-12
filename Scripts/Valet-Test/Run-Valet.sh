#!/bin/bash
#SBATCH -J Split_Ref_Synechococcus # Job name
#SBATCH -o Split_Ref_Synechococcus.o%j # Name of output file
#SBATCH -e Split_Ref_Synechococcus.e%j # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=all # Get email for begin, end, and fail
#SBATCH --time=0-18:00:00
#SBATCH --qos=throughput
#SBATCH --ntasks=8
#SBATCH --mem=36gb

module load bowtie2/2.3.4
module load samtools/1.5
module load bedtools/2.26.0
module load anaconda

source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/16S-Clustering/

osa_ref=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Synechococcus_references/Synechococcus_OS-A_genome.fasta
osb_ref=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Synechococcus_references/Synechococcus_OS-B_genome.fasta
reads_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Reads/${1}.fastq
out_dir=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Valet_New_Test/
mkdir ${out_dir}
mkdir ${out_dir}${1}

#/fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/valet-master/bin/split_ref_fixed_bam.sh --fasta ${osa_ref} --interleaved ${reads_dir} -o ${out_dir}${1}/OSA/
/fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/valet-master/bin/split_ref_fixed_bam.sh --fasta ${osb_ref} --interleaved ${reads_dir} -o ${out_dir}${1}/OSB/
