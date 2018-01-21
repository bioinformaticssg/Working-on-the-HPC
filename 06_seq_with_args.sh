#!/bin/bash

if [ $# -ne 3 ]; then
    echo "usage: nstart_seq nstep_seq nend_seq"
    exit 1
fi

for NUMBER in `seq $1 $2 $3`; do
        echo $NUMBER
        echo $NUMBER >> seq.txt
done
