#!/bin/bash
#SBATCH -J format_input # Job name
#SBATCH -o format_input.o%j # Name of Output File
#SBATCH -e format_input.e%j # Name of Error File
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for Job Info
#SBATCH --mail-type=FAIL
#SBATCH --time=100:00:00
#SBATCH --qos=large
#SBATCH --mem=128gb
#SBATCH --ntasks=32
#SBATCH --array=2-34


PARDIR=/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Reads_Reformatted/
mkdir ${PARDIR}

DATAPATH=/fs/cbcb-data/hotspring_metagenome/
ls ${DATAPATH} | grep "Hot" > hotspring_samples.txt
SAMPLE=`head -n ${SLURM_ARRAY_TASK_ID} hotspring_samples.txt | tail -n 1`

WRKPTH=${PARDIR}${SAMPLE}/
mkdir ${WRKPTH}

FASTQ=${DATAPATH}${SAMPLE}/QC_Filtered_Raw_Data/*.fastq.gz
zcat ${FASTQ} > ${WRKPTH}/${SAMPLE}_interleaved.fq

module load bbtools/38.71

reformat.sh in=${WRKPTH}/${SAMPLE}_interleaved.fq \
        out=${WRKPTH}/${SAMPLE}_R1_TMP.fq \
        out2=${WRKPTH}/${SAMPLE}_R2_TMP.fq \
        verifyinterleaved=t

sed '/^@/ s/ .*//' ${WRKPTH}/${SAMPLE}_R1_TMP.fq | awk '/^@/{$0=$0"/1"}1' > ${WRKPTH}/${SAMPLE}_R1.fq
rm ${WRKPTH}/${SAMPLE}_R1_TMP.fq
gzip ${WRKPTH}/${SAMPLE}_R1.fq

sed '/^@/ s/ .*//' ${WRKPTH}/${SAMPLE}_R2_TMP.fq | awk '/^@/{$0=$0"/2"}1' > ${WRKPTH}/${SAMPLE}_R2.fq
rm ${WRKPTH}/${SAMPLE}_R2_TMP.fq
gzip ${WRKPTH}/${SAMPLE}_R2.fq

rm ${WRKPTH}/${SAMPLE}_interleaved.fq
