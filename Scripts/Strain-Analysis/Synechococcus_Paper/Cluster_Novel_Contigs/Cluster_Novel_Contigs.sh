#!/bin/bash
#SBATCH -J Cluster_Novel_Contigs # Job name
#SBATCH -o Cluster_Novel_Contigs.o # Name of output file
#SBATCH -e Cluster_Novel_Contigs.e # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=ALL # Get email for begin, end, and fail
#SBATCH --nodes=1
#SBATCH	--ntasks=24
#SBATCH --time=24:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb

module load anaconda
module load blast/2.6.0 
module load sqlite
module load prodigal
export LD_LIBRARY_PATH="/fs/cbcb-software/RedHat-7-x86_64/common/local/sqlite/3.29.0/lib/"

source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/hotsprings_utils/

outdir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Ref_Guided_Scaffolding_Clustering_Aug_2022/BLAST_All_vs_All_90_5_75_500/
mkdir ${outdir}

osa_assembly_directory=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/assembly_and_scaffolds/osa/
osb_assembly_directory=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/reassembly/assembly_and_scaffolds/osb/
osa_ref_scaffold_directory=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Ref_Guided_Scaffolding_Clustering_Aug_2022/Missing_Contig_Coords_Aug/OSA/
osb_ref_scaffold_directory=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Ref_Guided_Scaffolding_Clustering_Aug_2022/Missing_Contig_Coords_Aug/OSB/
output=${outdir}Novel_Contigs.fna
srcdir=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Synechococcus_Paper/Cluster_Novel_Contigs/

python ${srcdir}Identify_Novel_Contigs.py ${osa_assembly_directory} \
                                          ${osb_assembly_directory} \
                                          ${osa_ref_scaffold_directory} \
                                          ${osb_ref_scaffold_directory} \
                                          ${output}

makeblastdb -dbtype nucl \
            -in ${output} \
            -input_type fasta \
            -parse_seqids \
            -out ${outdir}Novel_Contigs.db 
blastn -db ${outdir}Novel_Contigs.db \
       -query ${output} \
       -out ${outdir}/Novel_Contigs_All_vs_All.txt \
       -outfmt "6 qseqid sseqid pident length mismatch gapopen qlen qstart qend slen sstart send evalue bitscore" \
       -num_threads 16

python ${srcdir}Cluster_Novel_Contigs.py ${outdir}/Novel_Contigs_All_vs_All.txt \
                                         90 \
                                         5 \
                                         75 \
                                         500 \
                                         ${outdir}containment_clusters.txt \
                                         ${osa_assembly_directory} \
                                         ${osb_assembly_directory} \
                                         ${outdir}Representatives.fasta

REFPTH=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Data/YNP_Hot_Springs/Synechococcus_references
cat ${REFPTH}/Synechococcus_OS-A_genome.fasta ${REFPTH}/Synechococcus_OS-B_genome.fasta > ${outdir}Synechococcus_References.fna
makeblastdb -dbtype nucl \
            -input_type fasta \
            -in ${outdir}Synechococcus_References.fna \
            -parse_seqids \
            -out ${outdir}Synechococcus.db
blastn -db ${outdir}Synechococcus.db \
       -query ${outdir}Representatives.fasta \
       -out ${outdir}Representatives.Syenchococcus.blast \
       -outfmt "6 qseqid sseqid pident length mismatch gapopen qlen qstart qend slen sstart send evalue bitscore"

mkdir ${outdir}Prodigal/
prodigal -i ${outdir}Representatives.fasta \
         -a ${outdir}Prodigal/Representatives_Prodigal.faa \
         -d ${outdir}Prodigal/Representatives_Prodigal.fna \
         -o ${outdir}Prodigal/Representatives_Prodigal.out

mkdir ${outdir}EggNOG/
python3 -c "import sqlite3; print(sqlite3. sqlite_version)"
emapper.py --version --data_dir /fs/cbcb-lab/mpop/MetaCarvel_paper/hmp_scaffolds/eggnog_functional_comparison/databases/
emapper.py -m diamond \
           --no_annot \
           --no_file_comments \
           --cpu 24 \
           --data_dir /fs/cbcb-lab/mpop/MetaCarvel_paper/hmp_scaffolds/eggnog_functional_comparison/databases/ \
           -i ${outdir}Prodigal/Representatives_Prodigal.faa \
           --output ${outdir}/EggNOG/Representatives.eggnog.out

emapper.py -m no_search \
           --annotate_hits_table ${outdir}/EggNOG/Representatives.eggnog.out.emapper.seed_orthologs \
           --no_file_comments \
           -o ${outdir}/EggNOG/Representatives.eggnog.out \
           --cpu 24 \
           --data_dir /fs/cbcb-lab/mpop/MetaCarvel_paper/hmp_scaffolds/eggnog_functional_comparison/databases \
           --dbmem

python ${srcdir}Post_Process_EggNOG_Annotations.py ${outdir}EggNOG/Representatives.eggnog.out.emapper.annotations \
                                                   ${outdir}containment_clusters.txt \
                                                   ${outdir}Representatives.Syenchococcus.blast \
                                                   ${outdir}EggNOG.Annotation.xlsx