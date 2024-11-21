#!/bin/bash

# set -x

nproc

top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}'

echo "Memory Usage:"
df -h | grep '^/dev/' | awk '{print $1 ": " $5 " used (" $3 "/" $2 ")"}'

