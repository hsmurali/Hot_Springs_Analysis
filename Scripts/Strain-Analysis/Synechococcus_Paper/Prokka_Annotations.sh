#!/bin/bash
#SBATCH -J Prokka # Job name
#SBATCH -o Prokka_Metagenome.o%j # Name of Output File
#SBATCH -e Prokka_Metagenome.e%j # Name of Error File
#SBATCH --time=24:00:00                                         
#SBATCH --qos=high                                           
#SBATCH --mem=128gb                                               
#SBATCH --partition=cbcb 
#SBATCH --account=cbcb 
#SBATCH --ntasks=8
#SBATCH --array=1-34%4
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=ALL # Get email for begin, end, and fail

module load conda
source activate /fs/cbcb-software/RedHat-7-x86_64/users/hsmurali/venvs/Minimap2/

data_dir=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Hotsprings_Variant_Structure
bug=${1}

ls ${data_dir}/${bug} > Hotsprings_${bug}.txt
s=`head -n ${SLURM_ARRAY_TASK_ID} Hotsprings_${bug}.txt | tail -n 1`

assembly=${data_dir}/${bug}/${s}/Megahit_Contigs/final.contigs.fa
outdir=${data_dir}/${bug}/${s}/Prokka_Annotations/
rm -rf ${outdir}

prokka --outdir ${outdir} --metagenome ${assembly} 

blast_db=${data_dir}_Data_Analysis/${bug}/${bug}.db
blastn -db ${blast_db} -query ${assembly} -out ${outdir}assembly.blast -num_threads 8 \
       -outfmt "6 qseqid sseqid pident length mismatch gapopen qlen qstart qend slen sstart send evalue bitscore"