#!/bin/bash
#SBATCH -J Novel_Contig_Reads_Hits # Job name
#SBATCH -o Novel_Contig_Reads_Hits.o%j # Name of Output File
#SBATCH -e Novel_Contig_Reads_Hits.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=large
#SBATCH --mem=36gb
#SBATCH --ntasks=8
#SBATCH --array=1-1

module load mash
module load minimap
module load anaconda
module load samtools

source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/hotsprings_utils/

OSA=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/missing_contig_comparison/novel_regions_in_contigs_filtered_representatives_mapping_to_osa.fna
OSB=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/missing_contig_comparison/novel_regions_in_contigs_filtered_representatives_mapping_to_osb.fna
Neither=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/missing_contig_comparison/novel_regions_in_contigs_filtered_representatives_mapping_to_neither.fna
outdir=fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/missing_contig_comparison/read_alignments/
reads_dir=/fs/cbcb-data/hotspring_metagenome/

mkdir ${outdir}
ls ${reads_dir} | grep "^Hot" > hotspring_samples.txt
sample=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples.txt | tail -n 1`

minimap2 -t 8 ${OSA} ${reads_dir}${sample}/QC_Filtered_Raw_Data/*.fastq.gz > ${outdir}/${sample}_OSA.paf
minimap2 -t 8 ${OSB} ${reads_dir}${sample}/QC_Filtered_Raw_Data/*.fastq.gz > ${outdir}/${sample}_OSB.paf
minimap2 -t 8 ${Neither} ${reads_dir}${sample}/QC_Filtered_Raw_Data/*.fastq.gz > ${outdir}/${sample}_Neither.paf
