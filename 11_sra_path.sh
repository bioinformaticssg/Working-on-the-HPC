
#!/bin/bash

#$ -N sra_data_dump_11      # name of the job
#$ -o /data/users/$USER/BioinformaticsSG/Working-on-the-HPC/sra_files/sra11.out    # contains what would normally be printed to stdout (the terminal). The file sra11.out go the location indicated by the path.
#$ -e /data/users/$USER/BioinformaticsSG/Working-on-the-HPC/sra_files/sra11.err    # file name to print standard error messages to. These messages would normally be printed to the the terminal. The file sra11.err wil go the location indicated by the path.
#$ -q free64,som,asom       # request cores from the free64, som, asom queues.
#$ -pe openmp 8-64          # request parallel environment. You can include a minimum and maximum core count.
#$ -m beas                  # send you email of job status (b)egin, (e)rror, (a)bort, (s)uspend
#$ -ckpt blcr               # (c)heckpoint: writes a snapshot of a process to disk, (r)estarts the process after the checkpoint is complete

module load blcr
module load SRAToolKit

set -eoux pipefail

# Here we are assigning variables with paths
DIR=/data/users/$USER/BioinformaticsSG/Working-on-the-HPC
DATA_DIR=${DIR}/sra_files/data

# Here we are making a folder using the path we assigned above
mkdir -p ${DATA_DIR}
# Here we are changing our current directory to the new file
cd ${DATA_DIR}

# Retrieving SRA data and converting to fastq format
# -X prints only the first 5 spots (20 lines)
# Data will show up in the new directory as SRR390728.fastq
fastq-dump -X 5 SRR390728
