#!/bin/bash/
#used to monitor traffic, ports and IPs 3/9/2020

#prints current user logged on the system
w &&
#public IP
curl ipinfo.io/ip &&

#private IP
hostname -I | awk '{print $1}' &&

#DNS SERVER IP
grep "nameserver" /etc/resolv.conf &&

#WHAT PORTS ARE OPEN
netstat -tulpn | grep LISTEN

