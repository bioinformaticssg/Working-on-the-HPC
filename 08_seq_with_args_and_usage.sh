#!/bin/bash

# If the number of command line parameters given ($#) do not equal (-ne) 3, then the following message 
# will appear to provide the user information about the arguments that should be provided
if [ $# -ne 3 ]; then
    echo "usage: nstart_seq nstep_seq nend_seq"
    exit 1 # this exit code indicates that there was an error and the script will terminate
fi

# Instead of assigning variables, here the command line parameters are used directly (indicated by $1, $2, and $3)
for NUMBER in `seq $1 $2 $3`; do # seq is surrounded by back quotes
        echo ${NUMBER} # prints to stdout
        echo ${NUMBER} >> seq4.txt # prints to file named seq.txt
done
