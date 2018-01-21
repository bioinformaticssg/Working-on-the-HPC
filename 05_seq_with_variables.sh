
#!/bin/bash

NSTART_SEQ=0
NSTEP_SEQ=5
NEND_SEQ=30

for NUMBER in `seq ${NSTART_SEQ} ${NSTEP_SEQ} ${NEND_SEQ}`; do
        echo $NUMBER
        echo $NUMBER >> seq.txt
done
