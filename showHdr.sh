#!/bin/bash

FILES="$@"

# Show file header(s)
for f in $FILES
do
   echo -e "\n"$f
   xxd -l 0x04 ${f}; xxd -s -0x04 ${f}
done 
