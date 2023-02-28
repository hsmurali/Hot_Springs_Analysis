#!/bin/bash
#SBATCH -J Cluster_Novel_Contigs.all_genomes # Job name
#SBATCH -o Cluster_Novel_Contigs.all_genomes.o # Name of output file
#SBATCH -e Cluster_Novel_Contigs.all_genomes.e # Name of error file
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

data_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Hotsprings_Variant_Structure_Data_Analysis/
output_dir=${data_path}All_Genomes/
REFPTH=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Data/YNP_Hot_Springs/Ref_Genomes_Not_Syn/
srcdir=/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/Strain-Analysis/Synechococcus_Paper/Cluster_Novel_Contigs/

mkdir ${output_dir}

cat ${data_path}Chloracidobacterium_thermophilum_B/Novel_Contigs_All_vs_All.txt \
	${data_path}Chloroflexus/Novel_Contigs_All_vs_All.txt \
	${data_path}OSA/Novel_Contigs_All_vs_All.txt \
	${data_path}OSB/Novel_Contigs_All_vs_All.txt \
	${data_path}Roseiflexus/Novel_Contigs_All_vs_All.txt > ${output_dir}Novel_Contigs_All_vs_All.txt

cat ${data_path}Chloracidobacterium_thermophilum_B/Novel_Contigs.fna \
	${data_path}Chloroflexus/Novel_Contigs.fna \
	${data_path}OSA/Novel_Contigs.fna \
	${data_path}OSB/Novel_Contigs.fna \
	${data_path}Roseiflexus/Novel_Contigs.fna > ${output_dir}Novel_Contigs.fna

cat ${REFPTH}/Chloracidobacterium_thermophilum_B.fna \
	${REFPTH}/Chloroflexus.fna \
	${REFPTH}/Roseiflexus.fna \
	${REFPTH}/Synechococcus_OS-A_genome.fasta \
	${REFPTH}/Synechococcus_OS-B_genome.fasta > ${output_dir}References.fasta

python ${srcdir}Cluster_Novel_Contigs.py -a ${output_dir}Novel_Contigs_All_vs_All.txt \
										 -O ${output_dir} -s ${output_dir}Novel_Contigs.fna \
										 -c 90 -n 5 -r 75 -l 500


makeblastdb -dbtype nucl \
			-input_type fasta \
			-in ${output_dir}References.fasta \
			-parse_seqids \
			-out ${output_dir}References.db

blastn -db ${output_dir}References.db \
	   -query ${output_dir}Representatives.fasta \
       -out ${output_dir}Representatives.blast \
       -outfmt "6 qseqid sseqid pident length mismatch gapopen qlen qstart qend slen sstart send evalue bitscore"

mkdir ${output_dir}Prodigal/
prodigal -i ${output_dir}Representatives.fasta \
         -a ${output_dir}Prodigal/Representatives_Prodigal.faa \
         -d ${output_dir}Prodigal/Representatives_Prodigal.fna \
         -o ${output_dir}Prodigal/Representatives_Prodigal.out

eggnog_db_path=/fs/cbcb-lab/mpop/MetaCarvel_paper/hmp_scaffolds/eggnog_functional_comparison/databases/
mkdir ${output_dir}/EggNOG/
python3 -c "import sqlite3; print(sqlite3. sqlite_version)"
emapper.py --version --data_dir ${eggnog_db_path}
emapper.py -m diamond --no_annot --no_file_comments --cpu 24 \
		   --data_dir ${eggnog_db_path} \
           -i ${output_dir}/Prodigal/Representatives_Prodigal.faa \
           --output ${output_dir}/EggNOG/Representatives.eggnog.out
emapper.py -m no_search \
		   --annotate_hits_table ${output_dir}/EggNOG/Representatives.eggnog.out.emapper.seed_orthologs \
           --no_file_comments -o ${output_dir}/EggNOG/Representatives.eggnog.out \
           --cpu 24 \
           --data_dir ${eggnog_db_path} --dbmem

python ${srcdir}Post_Process_EggNOG_Annotations.py ${output_dir}/EggNOG/Representatives.eggnog.out.emapper.annotations \
                                                   ${output_dir}/containment_clusters.txt \
                                                   ${output_dir}/Representatives.blast \
                                                   ${output_dir}/EggNOG.Annotation.xlsx