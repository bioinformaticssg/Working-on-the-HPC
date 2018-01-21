#!/bin/bash

for NUMBER in `seq 1 1 10`; do 
        echo $NUMBER
        echo $NUMBER >> seq.txt
done
