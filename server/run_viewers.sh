#!/bin/bash

test ! -f "/var/www/html/stat/stat.csv"  && echo "date,viewers,fromip" > /var/www/html/stat/stat.csv


/root/viewers.sh >> /var/www/html/stat/stat.csv

tail -110 /var/www/html/stat/stat.csv > /tmp/_stat.csv
cp /tmp/_stat.csv /var/www/html/stat/stat.csv
sed -i '1s/^/date,viewers,fromip\n/' /var/www/html/stat/stat.csv
