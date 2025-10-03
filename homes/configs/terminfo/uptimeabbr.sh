#!/bin/bash

uptimeint=$(cat /proc/uptime | cut -f 1 -d " ")
hours=$((${uptimeint%.*} / 3600))
minsec=$(date -u -d "@${uptimeint}" +"%M:%S")
echo "$hours:$minsec"
