#!/bin/bash

fa=$1
fb=$2
delm="\n==================================================="

# Compare Hash Values
fm1=`openssl dgst -md5 $fa | cut -d '=' -f 2`
fm2=`openssl dgst -md5 $fb | cut -d '=' -f 2`

fs1=`openssl dgst -sha1 $fa | cut -d '=' -f 2`
fs2=`openssl dgst -sha1 $fb | cut -d '=' -f 2`

# MD5
if [ $fm1 == $fm2 ]; then
   printf "\nMATCH for MD5"$delm"\nFile 01: $fm1\nFile 02: $fm2\n"
else
   printf "\nNO MATCH for MD5\nFile 01: $fm1\nFile 02: $fm2\n"
fi

# SHA1
if [ $fs1 == $fs2 ]; then
   printf "\nMATCH for SHA1$delm\nFile 01: $fs1\nFile 02: $fs2\n"
else
   printf "\nNO MATCH for MD5\nFile 01: $fs1\nFile 02: $fs2\n"
fi

