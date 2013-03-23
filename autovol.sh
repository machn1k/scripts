#!/bin/bash

file=$1
prof=$2
script ~/Desktop/vol-auto.log

vol.py -f $file --profile=$prof connections
vol.py -f $file --profile=$prof connscan
vol.py -f $file --profile=$prof pslist -P
vol.py -f $file --profile=$prof pstree
vol.py -f $file --profile=$prof dlllist
vol.py -f $file --profile=$prof getsids
vol.py -f $file --profile=$prof iehistory
vol.py -f $file --profile=$prof filescan
vol.py -f $file --profile=$prof hivelist
exit

## USEFUL COMMANDS
# vol.py -f $file --profile=$prof dlllist --pid=1024
# vol.py -f $file --profile=$prof dlldump --pid=1024 -D OUT
# vol.py -f $file --profile=$prof getsids | grep 'svchost.exe'
# vol.py -f $file --profile=$prof filescan | grep -e '.bat'
# vol.py -f $file --profile=$prof hashdump -y [SYSTEM] -s [SAM]
