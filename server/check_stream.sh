#!/bin/bash

timestamp=`date +"%Y.%m.%d %H:%M:%S"`
stream=`netstat -a | grep EST|grep -v localhost| grep \:1935| cut -d' ' -f 16-17|cut -d':' -f1|sort|uniq|wc -l`
qual=`php /var/www/html/stat/hlsviewer.php | grep stream| cut -d':' -f19| cut -d',' -f1| wc -m`

stat="0  OK"
if [ "$qual" -ne "7" ]; then
   stat="1  WARNING"
fi

echo "pvtv_stream	$stat	check_stream"| /usr/local/bin/send_nsca -H nag.geotagmail.com -p 5667 -c /etc/send_nsca.cfg


