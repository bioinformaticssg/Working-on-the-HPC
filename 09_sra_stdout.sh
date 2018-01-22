#!/bin/bash

#$ -N sra_data_dump # name of the job
#$ -o sra.out       # contains what would normally be printed to stdout (the terminal)
#$ -e sra.err       # file name to print standard error messages to. These messages would normally be printed to the the terminal
#$ -q free64        # request cores from the free64 queue.
#$ -m beas          # send you email of job status (b)egin, (e)rror, (a)bort, (s)uspend

module load SRAToolKit

# Retrieving SRA data and converting it to fastq format
# -X prints the first five spots 
# -Z prints to standard out (which we have named sra.out above)
fastq-dump -X 5 -Z SRR390728
