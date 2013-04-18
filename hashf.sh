#!/bin/bash

f=$1

# Grep for hash values
cat $f1 |grep -e '[a-f0-9]\{32\}\:[a-f0-9]\{32\}'
