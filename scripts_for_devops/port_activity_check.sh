#!/bin/bash

set -x 
echo "List of active ports:"
lsof -i -P -n | grep LISTEN

read -p "Enter the port number to check: " port
if lsof -i :$port; then
    pid=$(lsof -t -i :$port)
    echo "Port $port is active."
    echo "Process ID: $pid"
    ps -p $pid -f
else
    echo "Port $port is not active."
fi