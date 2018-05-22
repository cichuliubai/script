#!/bin/bash  
#Rotate the Nginx logs to prevent a single logfile from consuming too much disk space.   
LOGS_PATH=/data/app/nginx
YESTERDAY=$(date -d "yesterday" +%Y-%m-%d)  
mv ${LOGS_PATH}/access.log ${LOGS_PATH}/access.log.${YESTERDAY}  
mv ${LOGS_PATH}/error.log ${LOGS_PATH}/error.log.${YESTERDAY}  
kill -USR1 $(cat /var/run/nginx.pid)
