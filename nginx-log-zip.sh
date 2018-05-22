#!/bin/bash  
#取前一天年月日  
y=`date --date='1 days ago' "+%Y"`
m=`date --date='1 days ago' "+%m"`
d=`date --date='1 days ago' "+%d"`

cd /data/app/nginx/
zip -r $y-$m-$d.zip *$y-$m-$d
rm -rf *$y-$m-$d
find /data/app/nginx/ -type f -mtime +30 -name "*.zip" -exec rm -f {} \;
