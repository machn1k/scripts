#!/bin/bash

IN=$1
cat *.txt | while read line; do echo $line && figlet -f $line $IN; done
