#!/bin/bash

# Automating an installation.

file=$1
NAME=`echo "$file" | cut -d'.' -f1`

if [[ `echo "$file" |awk -F . '{print $NF}'` = "gz" ]]; then
    echo Filetype: gzip
    #tar xzf $FNAME

elif [[ `echo "$file" |awk -F . '{print $NF}'` = "bz2" ]]; then
    echo Filetype: bzip2
    #tar xjf $file

elif [[ `echo "$file" |awk -F . '{print $NF}'` = "py" ]]; then
    echo Filetype: Python
    #sudo python $file install
fi
