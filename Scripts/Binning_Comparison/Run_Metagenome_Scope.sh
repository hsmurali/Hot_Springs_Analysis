#!/bin/bash
#SBATCH -J run_metagenome_scope # Job name
#SBATCH -o run_metagenome_scope.o # Name of output file
#SBATCH -e run_metagenome_scope.e # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=fail # Get email for begin, end, and fail
#SBATCH --time=100:00:00
#SBATCH --ntasks=1
#SBATCH --qos=large
#SBATCH --mem=128gb

# Command line input
GRAPHFILE=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/MS60/oriented.gml
OUTPUTPRE=MS60

module load anaconda/201903
module load sqlite

source activate metagenomescope_new

mgsc -i $GRAPHFILE -o $OUTPUTPRE -maxn=15000 -maxe=40000