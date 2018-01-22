#!/bin/bash

DIRECTORY="new_hello_directory" # assigns the variable called DIRECTORY to the string "new_hello_directory"

mkdir ${DIRECTORY} # makes a new directory. When you see ${DIRECTORY} it will use the string "new_hello_directory"
echo "Hello, world!" > ${DIRECTORY}/hello_file.txt # prints message to a file in the indicated path
