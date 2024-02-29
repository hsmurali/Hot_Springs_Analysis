#!/bin/bash
#SBATCH -J Snakemake # Job name
#SBATCH -o Snakemake.o # Name of Output File
#SBATCH -e Snakemake.e # Name of Error File
#SBATCH --time=24:00:00                                         
#SBATCH --qos=huge-long                                          
#SBATCH --mem=8gb
#SBATCH --partition=cbcb
#SBATCH --account=cbcb
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=ALL # Get email for begin, end, and fail

module load conda
source activate snakemake
#snakemake -s Snakefile.Cluster.smk --profile slurm -j 34 --use-conda --latency-wait 30

snakemake -s Snakefile.Summarize.smk --profile slurm -j 34 --use-conda --latency-wait 30