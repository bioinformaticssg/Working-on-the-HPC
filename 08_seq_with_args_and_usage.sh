#!/bin/bash

# If the number of command line parameters given ($#) do not equal (-ne) 3, then the following message 
# will appear to provide the user information about the arguments that should be provided
if [ $# -ne 3 ]; then
    echo "usage: nstart_seq nstep_seq nend_seq"
    exit 1
fi

# Instead of assigning variables, here the command line parameters are used directly (indicated by $1, $2, and $3)
for NUMBER in `seq $1 $2 $3`; do
        echo $NUMBER # prints to stdout
        echo $NUMBER >> seq.txt # prints to file named seq.txt
done
