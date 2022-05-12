#!/bin/bash
#SBATCH -J Mummer_OS # Job name
#SBATCH -o Mummer_Synechococcus.o%j # Name of output file
#SBATCH -e Mummer_Synechococcus.e%j # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=all # Get email for begin, end, and fail
#SBATCH --time=18:00:00
#SBATCH --qos=throughput
#SBATCH --ntasks=5
#SBATCH --mem=36gb

module load mummer
reference_OSA=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Synechococcus_references/Synechococcus_OS-A_genome.fasta
reference_OSB=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Synechococcus_references/Synechococcus_OS-B_genome.fasta

assembly_OSA=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/osa_osb_reassembly/${1}_megahit_assembled_contigs_osa/${1}_osa.contigs.fa
assembly_OSB=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/osa_osb_reassembly/${1}_megahit_assembled_contigs_osb/${1}_osb.contigs.fa  

mkdir ${1}
cd ${1}
mkdir OSA
cd OSA
nucmer --prefix=${1}_OSA ${reference_OSA} ${assembly_OSA}
show-coords -rcl ${1}_OSA.delta > ${1}_OSA.coords
show-tiling ${1}_OSA.delta > ${1}_OSA.tiling

cd ../
mkdir OSB
cd OSB
nucmer --prefix=${1}_OSB ${reference_OSB} ${assembly_OSB}
show-coords -rcl ${1}_OSB.delta > ${1}_OSB.coords
show-tiling ${1}_OSB.delta > ${1}_OSB.tiling
