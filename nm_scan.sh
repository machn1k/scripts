#!/bin/bash

# -------------------------------------------------------------------------
# Scan... alot.
# -------------------------------------------------------------------------
IP=$1

  echo "AVAILABLE OPTIONS

	 1) -sS 
	 2) -A -T3 
	 3) -sV -T2 
	 4) -sn 
	 5) -sS -sU -T5 -A 
	 6) -p 1-65535 -T4 -A 
	 7) -A -Pn -T4 
	 8) -sn --traceroute 
	 9) --badsum 
	10) -sT -Pn --spoof-mac Cisco 
	11) -f 
	12) -sTU -p 137,138,139 
	13) -sTU -p 901 
	14) -sV -Pn -6 
	15) -O --osscan-guess 
	16) -sX -A 
	17) -sX -A -D192.168.1.5,10.5.1.2,172.1.2.4,3.4.2.1 
	18) -Pn -D192.168.1.5,10.5.1.2,172.1.2.4,3.4.2.1 --spoof-mac Cisco 
	19) --spoof-mac Cisco --data-length 9 -f -D 172.168.200.200,RND:5 ME -v -n -O -sS -sV -oA ~/Desktop/$IP --log-errors -append-output -p T:1-1024,1433,2222,2249,7778,8080,9999 --randomize-hosts  172.168.1.2
	20) --script vuln 
	21) --script=smb-check-vulns.nse -p 445 U:137,138,T:139 
	22) -sC "not intrusive" 
	23) -sC "default or safe" 
	24) -sC "default and safe" 
	25) -sC (default or safe or intrusive) and not http-* 
	26) --script=auth* 
	27) --script=bit* 
	28) --script=broadcast* 
	29) --script=citrix* 
	30) --script=db2* 
	31) --script=dns* 
	32) --script=ftp* 
	33) --script=http* 
	34) --script=imap* 
	35) --script=ip* 
	36) --script=ldap* 
	37) --script=ms-sql* 
	38) --script=mysql* 
	39) --script=nessus* 
	40) --script=smb* 
	41) --script=smtp* 
	42) --script=socks* 
	43) --script=ssh* 
	44) --script=ssl* 
	45) --script=targets* 
	46) --script=x11* 
	47) --script=vnc* 
	48) --script-updatedb
	49) NETCAT WEBSERVER SCAN "

	read n
	case $n in
		1) nmap -sS $IP;;
		2) nmap -A -T3 IP;;
		3) nmap -sV -T2 $IP;;
		4) nmap -sn $IP;;
		5) nmap -sS -sU -T5 -A $IP;;
		6) nmap -p 1-65535 -T4 -A $IP;;
		7) nmap -A -Pn -T4 $IP;;
		8) nmap -sn --traceroute $IP;;
		9) nmap --badsum $IP;;
		10) nmap -sT -Pn --spoof-mac Cisco $IP;;
		11) nmap -f $IP;;
		12) nmap -sTU -p 137,138,139 $IP;;
		13) nmap -sTU -p 901 $IP;;
		14) nmap -sV -Pn -6 $IP;;
		15) nmap -O --osscan-guess $IP;;
		16) nmap -sX -A $IP;;
		17) nmap -sX -A -D192.168.1.5,10.5.1.2,172.1.2.4,3.4.2.1 $IP;;
		18) nmap -Pn -D192.168.1.5,10.5.1.2,172.1.2.4,3.4.2.1 --spoof-mac Cisco $IP;;
		19) nmap --spoof-mac Cisco --data-length 9 -f -D 172.168.200.200,RND:5 ME -v -n -O -sS -sV -oA ~/Desktop/$IP --log-errors -append-output -p T:1-1024,1433,2222,2249,7778,8080,9999 --randomize-hosts $IP 172.168.1.2;;
		20) nmap --script vuln $IP;;
		21) nmap --script=smb-check-vulns.nse -p 445 U:137,138,T:139 $IP;;
		22) nmap -sC "not intrusive" $IP;;
		23) nmap -sC "default or safe" $IP;;
		24) nmap -sC "default and safe" $IP;;
		25) nmap -sC "(default or safe or intrusive) and not http-*" $IP;;
		26) nmap --script=auth* $IP;;
		27) nmap --script=bit* $IP;;
		28) nmap --script=broadcast* $IP;;
		29) nmap --script=citrix* $IP;;
		30) nmap --script=db2* $IP;;
		31) nmap --script=dns* $IP;;
		32) nmap --script=ftp* $IP;;
		33) nmap --script=http* $IP;;
		34) nmap --script=imap* $IP;;
		35) nmap --script=ip* $IP;;
		36) nmap --script=ldap* $IP;;
		37) nmap --script=ms-sql* $IP;;
		38) nmap --script=mysql* $IP;;
		39) nmap --script=nessus* $IP;;
		40) nmap --script=smb* $IP;;
		41) nmap --script=smtp* $IP;;
		42) nmap --script=socks* $IP;;
		43) nmap --script=ssh* $IP;;
		44) nmap --script=ssl* $IP;;
		45) nmap --script=targets* $IP;;
		46) nmap --script=x11* $IP;;
		47) nmap --script=vnc* $IP;;
		48) nmap --script-updatedb;;
		49) echo $IP && echo -e 'OPTIONS / HTTP/1.0\r\n\r\n' | ncat -v $IP 80;;
		 *) invalid option;;
	esac
