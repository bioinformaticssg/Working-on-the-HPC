
#!/bin/bash

nstart_seq=0
nstep_seq=5
nend_seq=30

for NUMBER in `seq ${nstart_seq} ${nstep_seq} ${nend_seq}`; do
        echo $NUMBER
        echo $NUMBER >> seq.txt
done
