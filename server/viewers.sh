#!/bin/bash

timestamp=`date +"%Y.%m.%d %H:%M:%S"`
viewers1=`netstat -a | grep EST|grep -v localhost| grep \:5080| cut -d' ' -f 16-17|cut -d':' -f1|sort|uniq|wc -l`
viewers=`php /var/www/html/stat/hlsviewer.php | grep stream| cut -d':' -f29|cut -d',' -f1`

echo $timestamp,$viewers,$viewers1


#  uptime| cut -d',' -f 4
