#!/bin/bash
#SBATCH -J Scaffold_Using_References # Job name
#SBATCH -o Scaffold_Using_References.o%j # Name of Output File
#SBATCH -e Scaffold_Using_References.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=large
#SBATCH --mem=36gb
#SBATCH --ntasks=8
#SBATCH --array=1-34

module load minimap
#module load anaconda
#source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/hotsprings_utils/

WRKPTH=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/
OSA_Ref=${WRKPTH}Data/YNP_Hot_Springs/Synechococcus_references/Synechococcus_OS-A_genome.fasta
OSB_Ref=${WRKPTH}Data/YNP_Hot_Springs/Synechococcus_references/Synechococcus_OS-B_genome.fasta

OSA_assembly_dir=${WRKPTH}reassembly/assembly_and_scaffolds/osa/
OSB_assembly_dir=${WRKPTH}reassembly/assembly_and_scaffolds/osb/
ls ${OSA_assembly_dir} | grep "^Hot" > Hotspring_Samples.txt

s=`head -n ${SLURM_ARRAY_TASK_ID} Hotspring_Samples.txt | tail -n 1`
sample=${s/_megahit_assembled_contigs_osa/}

OUTPTH=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Ref_Guided_Scaffolding_Clustering_Test/
mkdir ${OUTPTH}
mkdir ${OUTPTH}Missing_Contig_Coords/

prog_path=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Synechococcus_Paper/Reference_Guided_Scaffolding/Scaffold_References.py

python ${prog_path} -A ${OSA_assembly_dir}${sample}_megahit_assembled_contigs_osa/${sample}_osa.contigs.fa -G1_Ref ${OSA_Ref} \
-AG ${OSA_assembly_dir}${sample}_megahit_assembled_contigs_osa/${sample}_osa_scaffolds/oriented.gml \
-O ${OUTPTH}Missing_Contig_Coords/OSA/ -pre ${sample}. -G2_Ref ${OSB_Ref} -G1 OSA -G2 OSB -d 80

python ${prog_path} -A ${OSB_assembly_dir}${sample}_megahit_assembled_contigs_osb/${sample}_osb.contigs.fa -G1_Ref ${OSB_Ref} \
-AG ${OSB_assembly_dir}${sample}_megahit_assembled_contigs_osb/${sample}_osb_scaffolds/oriented.gml \
-O ${OUTPTH}Missing_Contig_Coords/OSB/ -pre ${sample}. -G2_Ref ${OSA_Ref} -G1 OSB -G2 OSA -d 80