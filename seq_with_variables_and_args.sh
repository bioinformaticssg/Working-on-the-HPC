
#!/bin/bash

for NUMBER in `seq $1 $2 $3`; do
        echo $NUMBER
        echo $NUMBER >> seq.txt
done
