#!/bin/bash 
#SBATCH -J metabat                             
#SBATCH -o metabat.o.%j
#SBATCH -e metabat.e.%j
#SBATCH --mail-user=hsmurali@terpmail.umd.edu
#SBATCH --mail-type=all
#SBATCH --time=100:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb

module load metabat
module load qiime
module load checkm 

sample_path=/fs/cbcb-lab/mpop/hotspring_metagenome/Strain_Analysis/
sampleid=${1}
asm_graph_path=${sample_path}Binnacle/
contigspath=${asm_graph_path}${sampleid}/Scaffolds.fasta
abdpath=${asm_graph_path}${sampleid}/Feature-Matrix-Metabat.txt

mkdir ${sample_path}Metabat_Results/
cd ${sample_path}Metabat_Results
mkdir asm_graph_coverages
cd asm_graph_coverages
mkdir ${sampleid}
cd ${sampleid}

metabat2 -i ${contigspath} -o bin_result -l  -a ${abdpath} -v -d -m 1500

binningpath=${sample_path}Metabat_Results/asm_graph_coverages/
mkdir ${sample_path}CheckM-Results/
mkdir ${sample_path}CheckM-Results/asm_graph_coverages
fna_dir=${sample_path}CheckM-Results/asm_graph_coverages/FastaFiles/
mkdir ${fna_dir}
checkm_dir=${sample_path}CheckM-Results/asm_graph_coverages/Evaluation/
mkdir ${checkm_dir}
binstats_dir=${sample_path}CheckM-Results/asm_graph_coverages/BinStats/
mkdir ${binstats_dir}

cd ${fna_dir}
mkdir ${sampleid}
cd ${sampleid}

binningsampledir=${binningpath}${sampleid}/
for file in $(ls ${binningsampledir}bin_result.*); do
	OUT=`echo $file | sed 's/.*bin_result/bin_result/g'`
	filter_fasta.py -f ${contigspath} -o ${OUT}.fna -s $file
done

cd ${checkm_dir}
mkdir ${sampleid}

checkm lineage_wf -t 12 -x fna ${fna_dir}${sampleid}/ ${checkm_dir}${sampleid}/
checkm qa -t 12 -o 2 ${checkm_dir}${sampleid}/lineage.ms ${checkm_dir}${sampleid}/ > ${binstats_dir}${sampleid}_bin_stats.txt
