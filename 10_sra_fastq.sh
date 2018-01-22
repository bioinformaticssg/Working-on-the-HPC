
#!/bin/bash

#$ -N sra_data_dump
#$ -o sra.out
#$ -e sra.err
#$ -q free64
#$ -m beas

module load SRAToolKit

# Retrieving SRA data and converting to fastq
# -X prints only the first 5 spots
# Data will show up in directory as SRR390728.fastq
fastq-dump -X 5 SRR390728
