#!/bin/bash
rclone version
mkdir /.config
mkdir /.config/rclone/
wget -nc $CONFIG_FILE_IN_URL -O '/.config/rclone/rclone.conf'
rclone listremotes > remotes.txt
./REINTEG.sh 
service aria2 start
jupyter lab --ip=0.0.0.0 --port=$PORT --ServerApp.token='' --ServerApp.password='' --allow-root
