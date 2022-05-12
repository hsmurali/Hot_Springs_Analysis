#!/bin/bash
#SBATCH -J Summarize_Orphaned_Reads_Coords # Job name
#SBATCH -o Summarize_Orphaned_Reads_Coords.o%j # Name of output file
#SBATCH -e Summarize_Orphaned_Reads_Coords.e%j # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=all # Get email for begin, end, and fail
#SBATCH --time=18:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb
#SBATCH --array=2-34

module load anaconda
source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/binnacle_env/

filedir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Differential_Read_Counting/

ls ${filedir} | grep "Hot" > hotspring_samples.txt
s=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples.txt | tail -n 1`
sample=${s::-16}
echo ${sample}

novel_contig_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Novel_Contigs/${sample}.OSA
alignment_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/${sample}_megahit_assembled_contigs_osa/${sample}_osa_scaffolds/alignment.bed
orphaned_reads=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Differential_Read_Counting/${s}/Genome.OSA.orphaned_reads
output_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Differential_Read_Counting/${s}/OSA.Orphaned_Reads.bed

python Calculate_Orphaned_Read_Coords.py ${novel_contig_path} ${alignment_path} ${orphaned_reads} OSA ${output_dir}

novel_contig_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Novel_Contigs/${sample}.OSB
alignment_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/${sample}_megahit_assembled_contigs_osb/${sample}_osb_scaffolds/alignment.bed
orphaned_reads=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Differential_Read_Counting/${s}/Genome.OSB.orphaned_reads
output_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Differential_Read_Counting/${s}/OSB.Orphaned_Reads.bed

python Calculate_Orphaned_Read_Coords.py ${novel_contig_path} ${alignment_path} ${orphaned_reads} OSB ${output_dir}
