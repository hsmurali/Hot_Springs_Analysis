#!/bin/bash
#SBATCH -J Bowtie-Align-Synechococcus # Job name
#SBATCH -o Bowtie-Align-Synechococcus.o # Name of output file
#SBATCH -e Bowtie-Align-Synechococcus.e # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=all # Get email for begin, end, and fail
#SBATCH --time=5-00:00:00
#SBATCH --qos=large
#SBATCH --ntasks=5
#SBATCH --mem=128gb
#SBATCH --array=1

module load bowtie2/2.3.4
module load samtools/1.5
module load bedtools/2.26.0
module load anaconda
module load gcc/9.3.0

source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/binnacle_env/

genome=${1}

index_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Ref_Genomes_Not_Syn/
reads_dir=/fs/cbcb-data/hotspring_metagenome/
outdir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Non_Synechococcus_Alignments/

mkdir ${OUTDIR}

ls ${reads_dir} | grep "^Hot" > hotspring_samples.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples.txt | tail -n 1`

reads=${reads_dir}${sample}/QC_Filtered_Raw_Data/*.fastq.gz
mkdir ${outdir}${genome}/
mkdir ${outdir}${genome}/${sample}/

bowtie2 -x ${index_path}${genome} -U ${reads} --no-unal | samtools view -bS | samtools sort -n > ${outdir}${genome}/${sample}/${genome}.bam
bamToBed -i ${outdir}${genome}/${sample}/${genome}.bam > ${outdir}${genome}/${sample}/${genome}.bed
rm ${outdir}${genome}/${sample}/${genome}.bam

prog_dir=/fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/Differential_Read_Counting/bin/Differential_Read_Mapping.py
length=${index_path}${genome}.fna.fai

python ${prog_dir} -G1 ${genome} -G1_Len ${length} -mG1 ${outdir}${genome}/${sample}/${genome}.bed -out ${outdir}${genome}/${sample}/ -start_only false -pre Genome.
