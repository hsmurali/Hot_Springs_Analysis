#!/bin/bash
#SBATCH -J Count_Lines # Job name
#SBATCH -o Count_Lines.o # Name of Output File
#SBATCH -e Count_Lines.e # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=workstation
#SBATCH --mem=36gb
#SBATCH --ntasks=8

data_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/
cd ${data_dir}
wc -l Non_Synechococcus_Alignments/*/*/*.bed > Non-Synechococcus-Alignments-Counts.txt
wc -l Differential_Read_Counting/*/*.bed > Synechococcus-Alignments-Counts.txt
