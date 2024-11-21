LOG_FILE="system_status.log"

for i in {1..10}
do
    echo "Logging system status at $(date)" >> $LOG_FILE
    echo "---------------------------------" >> $LOG_FILE
    echo "CPU Usage:" >> $LOG_FILE
    top -bn1 | grep "Cpu(s)" >> $LOG_FILE
    echo "Memory Usage:" >> $LOG_FILE
    free -m >> $LOG_FILE
    echo "Disk Usage:" >> $LOG_FILE
    df -h >> $LOG_FILE
    echo "---------------------------------" >> $LOG_FILE
    sleep 1
done
