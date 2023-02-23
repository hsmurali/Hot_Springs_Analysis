#!/bin/bash
#SBATCH -J Novel_Contig_Reads_Hits # Job name
#SBATCH -o Novel_Contig_Reads_Hits.o%j # Name of Output File
#SBATCH -e Novel_Contig_Reads_Hits.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=workstation
#SBATCH --mem=36gb
#SBATCH --ntasks=8
#SBATCH --array=2-378

module load minimap

data_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Data/YNP_Hot_Springs/single_cell_assemblies/
novel_contigs=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Ref_Guided_Scaffolding_Clustering_Aug_2022/BLAST_All_vs_All_75_5_75_500/Representatives.fasta
out_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Ref_Guided_Scaffolding_Clustering_Aug_2022/Single_Cell_Analysis_75_5_75_500/
mkdir ${out_dir}

ls ${data_dir} | grep "^Uncmic" > single_cells.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} single_cells.txt | tail -n 1`

minimap2 -t 8 ${novel_contigs} ${data_dir}${sample}/IMG_Data/*.fna > ${out_dir}/${sample}.paf
