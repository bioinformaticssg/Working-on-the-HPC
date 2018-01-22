#!/bin/bash

for NUMBER in `seq 1 1 10`; do 
        echo $NUMBER # prints number sequence to stdout
        echo $NUMBER >> seq.txt # prints number sequence to file. Using >> apends each number in the sequence to the file. If you use > it will overwrite the file with the each number and the final will only have one number (10, in this example).
done
