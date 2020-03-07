#!/bin/bash

timestamp=`date +"%Y.%m.%d %H:%M:%S"`
#stream=`netstat -a | grep EST|grep -v localhost| grep \:1935| cut -d' ' -f 16-17|cut -d':' -f1|sort|uniq|wc -l`
qual=`php /var/www/html/stat/hlsviewer.php | grep stream| cut -d':' -f19| cut -d',' -f1| wc -m`


if [ "$qual" -ne "7" ]; then
   stat="1  WARNING"
   echo "1"> /var/www/html/stat/stream.txt
else
   stat="0  OK"
   echo "0"> /var/www/html/stat/stream.txt
fi


