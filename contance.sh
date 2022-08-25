#!/bin/bash
#this script will be used to perform system analysis
#Author=EngConstance
echo "your disk free space is:"
df -h
echo "your memory free space is:"
free -m
echo "your CPU statistic is:"
lscpu
echo "your system has been running for:"
uptime
