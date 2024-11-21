#!/bin/bash


echo "nice"

# set -exo

echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}'

echo "Memory Usage:"
free -h | grep Mem | awk '{print $3 "/" $2}'

echo "Disk Usage:"
df -h | grep '^/dev/' | awk '{print $1 ": " $5 " used (" $3 "/" $2 ")"}'

echo "System Uptime:"
uptime -p
PORT=8080
SERVER_COMMAND="your_server_command_here"

check_port() {
    netstat -tuln | grep ":$PORT " > /dev/null
}

restart_server() {
    echo "Restarting server..."
    $SERVER_COMMAND
}

while true; do
    if ! check_port; then
        echo "Port $PORT is not in use. Server might be down."
        restart_server
    else
        echo "Port $PORT is in use. Server is running."
    fi
    sleep 60
done