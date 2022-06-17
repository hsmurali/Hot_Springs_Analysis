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
#SBATCH --array=1-378

module load minimap

data_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/single_cell_assemblies/
novel_contigs=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/missing_contig_comparison/updated_contaiments_june2022/contig_containment_groups_subset_rep_contigs_formatted.fna
out_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/mapping_to_novel_contigs_june2022/
mkdir ${out_dir}

ls ${data_dir} | grep "^Uncmic" > single_cells.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} single_cells.txt | tail -n 1`

minimap2 -t 8 ${novel_contigs} ${data_dir}${sample}/IMG_Data/*.fna > ${out_dir}/${sample}.paf