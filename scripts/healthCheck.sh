#!/bin/bash
CPU_LOAD=$(top -bn1 | grep load | awk '{printf "%.2f", $(NF-2)}')
FREE_RAM=$(free -m | awk 'NR==2{printf "%.2f", $4*100/$2 }')

echo "CPU Load: $CPU_LOAD"
echo "Free RAM: $FREE_RAM%"
