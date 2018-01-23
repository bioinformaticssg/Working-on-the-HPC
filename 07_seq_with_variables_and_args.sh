
#!/bin/bash

# Command line parameters given when the script is invoked are indicated by $# (ex: $1, $2) based on the order they are given.
# Here we are assigning the command line parameter to a variable so we don't have the change script at the bottom.
NSTART_SEQ=$1 
NSTEP_SEQ=$2
NEND_SEQ=$3

for NUMBER in `seq ${NSTART_SEQ} ${NSTEP_SEQ} ${NEND_SEQ}`; do # seq is surrounded by back quotes
        echo $NUMBER # prints to stdout
        echo $NUMBER >> seq3.txt # prints to file
done
