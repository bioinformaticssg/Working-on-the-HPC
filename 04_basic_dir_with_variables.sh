#!/bin/bash

DIR="new_hello_directory" # assigns the variable called DIR to the string "new_hello_directory"

mkdir ${DIR} # makes a new directory. When you see ${DIR} it will use the string "new_hello_directory"
echo "Hello, world!" > ${DIR}/hello_file.txt # prints message to a file in the indicated path
