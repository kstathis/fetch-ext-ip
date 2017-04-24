# External IP logger

## Synopsis

A script that shows and saves computer's external IP (assigned by ISP).

## Scenario

We want to log our external IP to a file and each time we run the script it checks if there is a change : if the IP changed, it updates the file, else the log stays the same.

## Type

Bash script

## Prerequisites

* lynx ```sudo apt-get install lynx```

## Usage
Make the script executable ```chmod +x fetch-ext-ip.sh```

Run the script ```./fetch-ext-ip.sh```