
#!/bin/bash

NSTART_SEQ=$1
NSTEP_SEQ=$2
NEND_SEQ=$3

for NUMBER in `seq ${NSTART_SEQ} ${NSTEP_SEQ} ${NEND_SEQ}`; do
        echo $NUMBER
        echo $NUMBER >> seq.txt
done
