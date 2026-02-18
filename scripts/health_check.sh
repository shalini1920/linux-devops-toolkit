#!/bin/bash

echo "===== SYSTEM HEALTH CHECK ====="

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEM=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
DISK=$(df / | grep / | awk '{print $5}' | sed 's/%//')

echo "CPU Usage: $CPU%"
echo "Memory Usage: $MEM%"
echo "Disk Usage: $DISK%"

if [ "$DISK" -gt 80 ]; then
     echo "ALERT: Disk usage above $DISK_THRESHOLD%"

else
    echo "Status: OK"
fi
