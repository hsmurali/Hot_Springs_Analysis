#!/bin/bash
#SBATCH -J hot_springs_connected_components # Job name
#SBATCH -o hot_springs_connected_components.o%j # Name of output file
#SBATCH -e hot_springs_connected_components.e%j # Name of error file
#SBATCH --mail-user=hsmurali@terpmail.umd.edu # Email for job info
#SBATCH --mail-type=fail # Get email for begin, end, and fail
#SBATCH --time=0-18:00:00
#SBATCH --ntasks=5
#SBATCH --qos=throughput
#SBATCH --mem=36gb
#SBATCH --array=1-31

source activate hsmurali27
file=`head -n ${SLURM_ARRAY_TASK_ID} commands_validate_connected_components_wo_rd.txt | tail -n 1`
echo $file
python2 $file