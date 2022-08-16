#!/bin/bash
#SBATCH -J Diff_Read_Counts # Job name
#SBATCH -o Diff_Read_Counts.o%j # Name of output file
#SBATCH -e Diff_Read_Counts.e%j # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=all # Get email for begin, end, and fail
#SBATCH --time=18:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb
#SBATCH --array=2-34

module load bedtools/2.26.0
module load anaconda
module load gcc/9.3.0
source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/binnacle_env/

filedir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/
outdir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Differential_Read_Counting/
mkdir ${outdir}

ls ${filedir} | grep "_reassembly_statistics.txt" | grep "Hot" > hotspring_samples.txt

sample=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples.txt | tail -n 1`
replacement_osa=_aligned_to_osa_mapped_merged_sorted
replacement_osb=_aligned_to_osb_mapped_merged_sorted
t=_Diff_Read_Count
s=${sample//_reassembly_statistics.txt/$t}
s_osa=${sample//_reassembly_statistics.txt/$replacement_osa}
s_osb=${sample//_reassembly_statistics.txt/$replacement_osb}

mkdir ${outdir}${s}/

osa_bam_path=${filedir}${s_osa}.bam
osb_bam_path=${filedir}${s_osb}.bam

osa_bed_path=${outdir}${s}/${s_osa}.bed
osb_bed_path=${outdir}${s}/${s_osb}.bed

bamToBed -i ${osa_bam_path} > ${osa_bed_path}
bamToBed -i ${osb_bam_path} > ${osb_bed_path}

prog_dir=/fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/Differential_Read_Counting/bin/Differential_Read_Mapping.py
osa_len=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Synechococcus_references/Synechococcus_OS-A_genome.fasta.fai
osb_len=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Synechococcus_references/Synechococcus_OS-B_genome.fasta.fai

python ${prog_dir} -G1 OSA -G2 OSB -G1_Len ${osa_len} -G2_Len ${osb_len} -mG1 ${osa_bed_path} -mG2 ${osb_bed_path} -out ${outdir}${s} -start_only false -pre Genome.
