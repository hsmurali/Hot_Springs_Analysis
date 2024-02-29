#!/bin/bash
#SBATCH -J O_Ortholog_Cluster_Bowtie2 # Job name
#SBATCH -o O_Ortholog_Cluster_Bowtie2.o%j # Name of Output File
#SBATCH -e O_Ortholog_Cluster_Bowtie2.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-100:00:00
#SBATCH --qos=large
#SBATCH --mem=36gb
#SBATCH --ntasks=8
#SBATCH --array=2-34

module load bowtie2/2.3.4
module load k8
module load minimap

index_path=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/map_to_O_allele/O_Orthogroup_Index
paftools=/fs/cbcb-software/RedHat-7-x86_64/common/local/minimap/git_201907/src/minimap2/misc/paftools.js

outdir_sam=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/map_to_O_allele/BowTie2_sam_files/
mkdir ${outdir_sam}

outdir_paf=/fs/cbcb-lab/mpop/hotspring_metagenome/single_cell_analysis_with_Gabe_Birzu/map_to_O_allele/BowTie2_paf_files/
mkdir ${outdir_paf}

reads_dir=/fs/cbcb-data/hotspring_metagenome/
ls ${reads_dir} | grep "^Hot" > hotspring_samples.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples.txt | tail -n 1`

bowtie2 -x ${index_path} -U ${reads_dir}${sample}/QC_Filtered_Raw_Data/*.fastq.gz --no-unal -S ${outdir_sam}${sample}.sam
${paftools} sam2paf ${outdir_sam}${sample}.sam > ${outdir_paf}${sample}.paf
