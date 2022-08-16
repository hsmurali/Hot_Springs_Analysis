#!/bin/bash
#SBATCH -J Plot_Orphaned_Reads_Pileup # Job name
#SBATCH -o Plot_Orphaned_Reads_Pileup.o%j # Name of output file
#SBATCH -e Plot_Orphaned_Reads_Pileup.e%j # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=all # Get email for begin, end, and fail
#SBATCH --time=18:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb
#SBATCH --array=2-34

module load anaconda
source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/binnacle_env/

filedir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Differential_Read_Counting/
outdir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Orphaned_Reads_Pileup/
mkdir ${outdir}

ls ${filedir} | grep "Hot" > hotspring_samples.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples.txt | tail -n 1`


python Plot_Orphaned_Reads_Pileup.py ${sample}
