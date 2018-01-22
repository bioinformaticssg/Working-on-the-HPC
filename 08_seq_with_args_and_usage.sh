#!/bin/bash

# If the arguments given do not equal (-ne) 3, then the following message 
# will appear to provide the user information about the aruguments that should be provided
if [ $# -ne 3 ]; then
    echo "usage: nstart_seq nstep_seq nend_seq"
    exit 1
fi

for NUMBER in `seq $1 $2 $3`; do
        echo $NUMBER # prints to stdout
        echo $NUMBER >> seq.txt # prints to file named seq.txt
done
