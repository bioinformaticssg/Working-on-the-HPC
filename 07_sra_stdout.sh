#!/bin/bash

#$ -N sra_data_dump
#$ -o sra.out
#$ -e sra.err
#$ -q free64
#$ -m beas

module load SRAToolKit

# Retrieving SRA data and converting to fastq
fastq-dump -X 5 -Z SRR390728
