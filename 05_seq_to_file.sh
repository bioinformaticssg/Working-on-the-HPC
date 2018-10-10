#!/bin/bash

for NUMBER in `seq 0 2 20`; do # seq is surrounded by back quotes
        echo ${NUMBER} # prints number sequence to stdout
        echo ${NUMBER} >> seq1.txt # prints number sequence to file. Using >> apends each number in the sequence to the file. If you use > it will overwrite the file with each number and the final file will only have one number (20, in this example).
done
