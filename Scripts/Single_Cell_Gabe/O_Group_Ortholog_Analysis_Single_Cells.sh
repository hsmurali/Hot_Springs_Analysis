#!/bin/bash
#SBATCH -J O_Ortholog_Cluster # Job name
#SBATCH -o O_Ortholog_Cluster.o%j # Name of Output File
#SBATCH -e O_Ortholog_Cluster.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=large
#SBATCH --mem=36gb
#SBATCH --ntasks=8
#SBATCH --array=2-34

module load mash
module load minimap
module load anaconda
module load samtools

source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/hotsprings_utils/

gene_path=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/map_to_O_allele/O_Orthogroup.fna
outdir=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/map_to_O_allele/
reads_dir=/fs/cbcb-data/hotspring_metagenome/

ls ${reads_dir} | grep "^Hot" > hotspring_samples.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples.txt | tail -n 1`

minimap2 -t 8 -a ${gene_path} ${reads_dir}${sample}/QC_Filtered_Raw_Data/*.fastq.gz | samtools view -F 4 > ${outdir}/${sample}.sam
minimap2 -t 8 ${gene_path} ${reads_dir}${sample}/QC_Filtered_Raw_Data/*.fastq.gz > ${outdir}/${sample}.paf
