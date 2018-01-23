
#!/bin/bash

#$ -N sra_data_dump_10  # name of the job
#$ -o sra.out           # contains what would normally be printed to stdout (the terminal)
#$ -e sra.err           # file name to print standard error messages to. These messages would normally be printed to the the terminal
#$ -q free64,som,asom   # request cores from the free64, som, asom queues.
#$ -pe openmp 8-64      # request parallel environment. You can include a minimum and maximum core count.
#$ -m beas              # send you email of job status (b)egin, (e)rror, (a)bort, (s)uspend
#$ -ckpt blcr           # (c)checkpoint: writes a snapshot of a process to disk, (r)estarts the process after the checkpoint is complete

module load blcr
module load SRAToolKit

# Retrieving SRA data and converting to fastq format
# -X prints only the first 5 spots (20 lines)
# Data will show up in directory as SRR390728.fastq
fastq-dump -X 5 SRR390728
