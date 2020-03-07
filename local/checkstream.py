#!/usr/bin/python
import urllib.request
import subprocess

data = urllib.request.urlopen("http://stream.pvtv.hu/stat/stream.txt") 
for line in data: 
    print (int(line))
    if (int(line)) == 0:
        print ("ok")
    
    if (int(line)) == 1:
        #print "nem ok"
        subprocess.call([r'C:\Users\streamer\obs-restart.bat'])
