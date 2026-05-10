#!/bin/bash

echo "Starting system monitoring..."

LOGFILE="logs/system_health_$(date +%F).log"

echo "==============================" >> $LOGFILE
echo "System Health Check - $(date)" >> $LOGFILE
echo "==============================" >> $LOGFILE

echo "" >> $LOGFILE
echo "System Uptime:" >> $LOGFILE
uptime >> $LOGFILE

echo "" >> $LOGFILE
echo "Memory Usage:" >> $LOGFILE
free -h >> $LOGFILE

echo "" >> $LOGFILE
echo "Disk Usage:" >> $LOGFILE
df -h >> $LOGFILE

echo "" >> $LOGFILE
echo "CPU Load:" >> $LOGFILE
top -bn1 | grep "Cpu(s)" >> $LOGFILE

echo "" >> $LOGFILE
echo "Logged-in Users:" >> $LOGFILE
who >> $LOGFILE

echo "" >> $LOGFILE
echo "hostname:" >> $LOGFILE
hostname >> $LOGFILE

echo "" >> $LOGFILE
echo "Top 5 Memory Consuming Processes:" >> $LOGFILE
ps aux --sort=-%mem | head -6 >> $LOGFILE

echo "" >> $LOGFILE
echo "Health check completed." >> $LOGFILE
echo "" >> $LOGFILE

echo "" >> $LOGFILE
echo "Disk Usage Alert Check:" >> $LOGFILE

DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $DISK_USAGE -gt 80 ]
then
    echo "WARNING: Disk usage is above 80%" >> $LOGFILE
else
    echo "Disk usage is under control." >> $LOGFILE
fi

echo "Monitoring completed successfully."
