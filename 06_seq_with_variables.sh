
#!/bin/bash

# Assigning the following variables with numbers to start, step, and end the sequence with. When you see these names the value assigned will replace them.
NSTART_SEQ=0
NSTEP_SEQ=5
NEND_SEQ=30

for NUMBER in `seq ${NSTART_SEQ} ${NSTEP_SEQ} ${NEND_SEQ}`; do # seq is surrounded by back quotes
        echo ${NUMBER} # prints number sequence to stdout (terminal)
        echo ${NUMBER} >> seq.txt # prints number sequence to file
done
