#!/bin/bash


set -x

read -p "Enter the process ID to kill: " pid
if ps -p $pid > /dev/null 2>&1; then
    kill $pid
    echo "Process $pid has been killed."
else
    echo "Process $pid does not exist."
fi