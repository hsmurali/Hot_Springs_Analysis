#!/bin/bash

seq=${1}
allele_idx=${2}
out_path=${3}

blastn -task blastn -evalue 1e-3 -query ${seq} -db ${allele_idx} -word_size 6 -outfmt 6 -num_threads 32 -out ${out_path}
