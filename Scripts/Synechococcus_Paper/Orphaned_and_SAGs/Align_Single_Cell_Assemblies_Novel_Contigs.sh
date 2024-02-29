#!/bin/bash
#SBATCH -J Novel_Contig_Reads_Hits # Job name
#SBATCH -o Novel_Contig_Reads_Hits.o%j # Name of Output File
#SBATCH -e Novel_Contig_Reads_Hits.e%j # Name of Error File
#SBATCH --time=24:00:00                                         
#SBATCH --qos=high                                           
#SBATCH --mem=32gb                                               
#SBATCH --partition=cbcb 
#SBATCH --account=cbcb 
#SBATCH --ntasks=8
#SBATCH --array=2-378%2

module load conda
source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/Minimap2/

data_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Data/YNP_Hot_Springs/single_cell_assemblies/
novel_contigs=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Representatives.fasta
out_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Single_Cell_Analysis/

mkdir ${out_dir}

ls ${data_dir} | grep "^Uncmic" > single_cells.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} single_cells.txt | tail -n 1`

minimap2 -t 8 ${novel_contigs} ${data_dir}${sample}/IMG_Data/*.fna > ${out_dir}/${sample}.paf
