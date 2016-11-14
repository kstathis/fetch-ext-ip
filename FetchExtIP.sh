#!/bin/bash

ext_ip=`lynx -dump -nolist www.whatismyipaddress | grep -A 1 "IPv4" | tail -n 1 | cut -c 4-`
# save the output of the command to variable to use

if [ -f "ext_ip.log" ]
# check if the log file already exists
then
    # Log file already exists
    echo "log found"

    if grep -Fq "$ext_ip" ext_ip.log
    # check if the IP we currently have is the same as in the log file
	then
	    echo "Same IP. No changes to log"
	    # IP is the same, so no update in log file
	else
	    # IP changed, so we update the log file
	    echo "Different IP. Updating..."
	    echo -n -e "\t" > ext_ip.log
	    date +"%T on %d-%m-%Y" >> ext_ip.log
	    echo -n "IP : " >> ext_ip.log
	    echo "$ext_ip" >> ext_ip.log
	    echo "--------------------" >> ext_ip.log
	    # writing date and IP in log file
    fi
else
    # Log file doesn't exist. So we create it
    echo "Log not found. Creating..."
    echo -n -e "\t" > ext_ip.log
    date +"%T on %d-%m-%Y" >> ext_ip.log
    echo -n "IP : " >> ext_ip.log
    echo "$ext_ip" >> ext_ip.log
    echo "--------------------" >> ext_ip.log
    # writing date and IP in log file
fi