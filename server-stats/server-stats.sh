#!/bin/bash
echo "============================="
echo "   Server Performance Stats  "
echo "============================="

#OS Version
echo -e "\n--- OS Version ---"
cat /etc/os-release | grep PRETTY_NAME

#Server Uptime
echo -e "\n--- Uptime ---"
uptime -p

#Load Average
echo -e "\n--- Load Average ---"
uptime | awk -F'load average:' '{ print "Load Average:" $2 }'

#Logged in users
echo -e "\n--- Logged In Users ---"
who

#Failed login attempts
echo -e "\n--- Failed Login Attempts (last 10) ---"
lastb | head -n 10


#Total CPU Usage
echo -e "\n--- CPU Usage ---"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "%"}'

#Total Memory Usage
echo -e "\n--- Memory Usage ---"
free -m | awk 'NR==2{printf "Used: %sMB / Total: %sMB (%.2f%%)\n", $3, $2, $3*100/$2 }'

#Total Disk Usage
echo -e "\n--- Disk Usage ---"
df -h --total | awk '/total/ {print "Used: "$3" / Total: "$2" ("$5" used)"}'

#Top 5 most consuming CPU processes
echo -e "\n--- Top 5 CPU-consuming processes ---"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

#Top 5 Memory consuming processes
echo -e "\n--- Top 5 Memory-consuming processes ---"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6