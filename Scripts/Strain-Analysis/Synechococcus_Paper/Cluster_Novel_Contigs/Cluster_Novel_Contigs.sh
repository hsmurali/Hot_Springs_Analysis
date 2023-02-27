#!/bin/bash
#SBATCH -J Cluster_Novel_Contigs_OSA # Job name
#SBATCH -o Cluster_Novel_Contigs_OSA.o # Name of output file
#SBATCH -e Cluster_Novel_Contigs_OSA.e # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=ALL # Get email for begin, end, and fail
#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH --time=24:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb

module load anaconda
module load blast/2.6.0 
module load sqlite
module load prodigal
export LD_LIBRARY_PATH="/fs/cbcb-software/RedHat-7-x86_64/common/local/sqlite/3.29.0/lib/"

source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/hotsprings_utils/

genome=OSA
data_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Hotsprings_Variant_Structure/${genome}/
output_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Hotsprings_Variant_Structure_Data_Analysis/
mkdir ${output_dir}
mkdir ${output_dir}${genome}/

srcdir=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Synechococcus_Paper/Cluster_Novel_Contigs/

python ${srcdir}Identify_Novel_Contigs.py -a ${data_dir} \
										  -g ${genome} \
										  -o ${output_dir}${genome}/

makeblastdb -dbtype nucl \
			-in ${output_dir}${genome}/Novel_Contigs.fna \
			-input_type fasta \
			-parse_seqids \
			-out ${output_dir}${genome}/Novel_Contigs.db
blastn -db ${output_dir}${genome}/Novel_Contigs.db \
	   -query ${output_dir}${genome}/Novel_Contigs.fna \
	   -out ${output_dir}${genome}/Novel_Contigs_All_vs_All.txt \
	   -num_threads 16 \
       -outfmt "6 qseqid sseqid pident length mismatch gapopen qlen qstart qend slen sstart send evalue bitscore" \
python ${srcdir}Cluster_Novel_Contigs.py -a ${output_dir}${genome}/Novel_Contigs_All_vs_All.txt \
										 -O ${output_dir}${genome}/ -s ${output_dir}${genome}/Novel_Contigs.fna \
										 -c 90 -n 5 -r 75 -l 500

REFPTH=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Data/YNP_Hot_Springs/Ref_Genomes_Not_Syn/Synechococcus_OS-A_genome.fasta
makeblastdb -dbtype nucl \
			-input_type fasta \
			-in ${REFPTH} \
			-parse_seqids \
			-out ${output_dir}${genome}/${genome}.db
blastn -db ${output_dir}${genome}/${genome}.db \
	   -query ${output_dir}${genome}/Representatives.fasta \
       -out ${output_dir}${genome}/Representatives.${genome}.blast \
       -outfmt "6 qseqid sseqid pident length mismatch gapopen qlen qstart qend slen sstart send evalue bitscore"

mkdir ${output_dir}${genome}/Prodigal/
prodigal -i ${output_dir}${genome}/Representatives.fasta \
         -a ${output_dir}${genome}/Prodigal/Representatives_Prodigal.faa \
         -d ${output_dir}${genome}/Prodigal/Representatives_Prodigal.fna \
         -o ${output_dir}${genome}/Prodigal/Representatives_Prodigal.out

eggnog_db_path=/fs/cbcb-lab/mpop/MetaCarvel_paper/hmp_scaffolds/eggnog_functional_comparison/databases/
mkdir ${output_dir}${genome}/EggNOG/
python3 -c "import sqlite3; print(sqlite3. sqlite_version)"
emapper.py --version --data_dir ${eggnog_db_path}
emapper.py -m diamond --no_annot --no_file_comments --cpu 24 \
		   --data_dir ${eggnog_db_path} \
           -i ${output_dir}${genome}/Prodigal/Representatives_Prodigal.faa \
           --output ${output_dir}${genome}/EggNOG/Representatives.eggnog.out
emapper.py -m no_search \
		   --annotate_hits_table ${output_dir}${genome}/EggNOG/Representatives.eggnog.out.emapper.seed_orthologs \
           --no_file_comments -o ${output_dir}${genome}/EggNOG/Representatives.eggnog.out \
           --cpu 24 \
           --data_dir ${eggnog_db_path} --dbmem

python ${srcdir}Post_Process_EggNOG_Annotations.py ${output_dir}${genome}/EggNOG/Representatives.eggnog.out.emapper.annotations \
                                                   ${output_dir}${genome}/containment_clusters.txt \
                                                   ${output_dir}${genome}/Representatives.${genome}.blast \
                                                   ${output_dir}${genome}/EggNOG.Annotation.xlsx
