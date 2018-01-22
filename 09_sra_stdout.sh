#!/bin/bash

#$ -N sra_data_dump
#$ -o sra.out
#$ -e sra.err
#$ -q free64
#$ -m beas

module load SRAToolKit

# Retrieving SRA data and converting it to fastq format
# -X prints the first five spots 
# -Z prints to standard out
fastq-dump -X 5 -Z SRR390728
