#!/bin/bash
#SBATCH --job-name=MakeBLAST_DB                                   
#SBATCH --output=MakeBLAST_DB.out.%j                            
#SBATCH --error=MakeBLAST_DB.err.%j                           
#SBATCH --time=00:10:00                                         
#SBATCH --qos=high                                           
#SBATCH --mem=32gb                                               
#SBATCH --partition=cbcb 
#SBATCH --account=cbcb 
#SBATCH --mail-user=hsmurali@terpmail.umd.edu 
#SBATCH --mail-type=all 

module load blast 

seq_path=${1}
out_path=${2}

echo ${seq_path}
echo ${out_path}
makeblastdb -in ${seq_path} -input_type fasta -parse_seqids -dbtype nucl -out ${out_path}
