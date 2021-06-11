#!/bin/bash
#https://bytefreaks.net/gnulinux/bash/cecho-a-function-to-print-using-different-colors-in-bash
source cecho.sh

#cecho -n -c 'green' 'GREEN ';
#cecho -c 'red' 'RED ';
#cecho -c 'yellow' 'YELLOW';
#cecho warning "ALERT"

#Get the name of the script currently being executed

scriptName=$(basename $(test -L "$0" && readlink "$0" || echo "$0"));

#Get the directory where the script currently being executed resides

scriptDirDIR=$(cd $(dirname "$0") && pwd);

#Print in blue color with no new line

cecho -n -c 'blue' "$scriptDir";

#Print in red color with a new line following the message

cecho -c 'red' "$scriptName";

#Using the information() function to print in blue followed by a new line

information ‘End of script’;
