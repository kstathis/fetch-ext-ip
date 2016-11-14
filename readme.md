# External IP logger (Bash script)

## Synopsis

A Bash script that checks and saves computer's external IP (assigned by ISP).

## Scenario

We want to log our external IP to a file and each time we run the script it checks if there is a change : if the IP changed, it updates the file, else the log stays the same.

## Prerequisites

* Lynx ```sudo apt-get install lynx```

## Usage

Make the script executable ```(sudo chmod +x ext_ip.sh)``` and then run it.

## Notes

While writing this script, i encountered this issue : Everything was working well if i was using ```nano``` or the internal editor of ```Midnight Commander``` to write the .sh file, in Linux environment.  
But when i was trying to run the script that was written in Windows environment, nothing was working !  
After some research, i found out that the problem might be that the editor i used in Windows, was addinf \r (carriage return) at the end of every line and it was messing with my script.  
So : Choose your editor wise ! (or be careful when exchanging code between Linux <---> Windows)