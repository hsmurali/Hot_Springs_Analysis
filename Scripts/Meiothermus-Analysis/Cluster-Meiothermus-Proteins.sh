#!/bin/bash
#SBATCH -J Cluster-Proteins # Job name
#SBATCH -o Cluster-Proteins.o # Name of Output File
#SBATCH -e Cluster-Proteins.e # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=5-00:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb

module load cdhit
PROTDIR=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/meiothermus/
cd ${PROTDIR}
cat $(ls -t *.prot.faa) > Proteins.faa
mkdir ${PROTDIR}/Clusters/
cd-hit -i ${PROTDIR}Proteins.faa -o ${PROTDIR}/Clusters/Clusters_90 -c 0.90 -d 100