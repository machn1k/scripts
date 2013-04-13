#!/bin/bash

# Automating an installation.

file=$1
ufname=`echo "$file" | cut -d'.' -f1`
pysf="setup.py"

if [[ `echo "$file" |awk -F . '{print $NF}'` = "gz" ]]; then
    echo Filetype: gzip
    tar xzf $file && cd $ufname

elif [[ `echo "$file" |awk -F . '{print $NF}'` = "bz2" ]]; then
    echo Filetype: bzip2
    tar xjf $file && cd $ufname

elif [[ `echo "$file" |awk -F . '{print $NF}'` = "zip" ]]; then
    echo Filetype: zip
    unzip $file && cd $ufname
fi

### INSTALLING
#if [[ find "$loc" -name "$pysf" == "$pysf" ]]; then
#    echo Installation Type: Python
    #sudo python $pysf install

#if [[ `echo "$file" |awk -F . '{print $NF}'` = "py" ]]; then
#    echo Filetype: Python
    #sudo python $pysf install

