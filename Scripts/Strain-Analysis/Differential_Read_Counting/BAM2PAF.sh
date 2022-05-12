#!/bin/bash
#SBATCH -J BAM2PAF # Job name
#SBATCH -o BAM2PAF.o%j # Name of Output File
#SBATCH -e BAM2PAF.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-1:00:00
#SBATCH --qos=large
#SBATCH --mem=36gb
#SBATCH --array=1-136

module load anaconda
source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/hotsprings_utils/
module load samtools

bam_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/contig_mapping/
out_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/contig_mapping_paf/
mkdir ${out_path}

ls ${bam_path} > samples.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} samples.txt | tail -n 1`

s=${sample::-3}
sampath=${out_path}${s}sam
pafpath=${out_path}${s}paf

bioconvert bam2sam ${bam_path}${sample} ${sampath}
bioconvert sam2paf ${sampath} ${pafpath}

rm ${sampath}