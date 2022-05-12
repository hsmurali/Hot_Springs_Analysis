#!/bin/bash
#SBATCH -J O_Ortholog_Cluster_Blast # Job name
#SBATCH -o O_Ortholog_Cluster_Blast.o%j # Name of Output File
#SBATCH -e O_Ortholog_Cluster_Blast.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=all
#SBATCH --time=0-18:00:00
#SBATCH --qos=large
#SBATCH --mem=36gb
#SBATCH --ntasks=8

module load blast 
module load seqtk

ref_path=YSG_1331_alleles.fna
makeblastdb -in ${ref_path} -parse_seqids -dbtype nucl
reads_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/Reads/
query=${reads_dir}MS65.fastq
seqtk seq -a ${query} > MS65.fasta

blastn -query MS65.fasta -db ${ref_path} -outfmt "6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore qlen slen" -out YSG_1331.txt
