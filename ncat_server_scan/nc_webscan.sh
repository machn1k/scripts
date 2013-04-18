#!/bin/bash

# Web server options
cat *.txt | while read line; 
do 
   echo $line && echo -e 'OPTIONS / HTTP/1.0\r\n\r\n' | ncat -v $line 80 | grep -wi 'server\|allow'; 
done
