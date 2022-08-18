#!/bin/bash
cd /home/ubuntu/node-app
sudo pm2 start app.js
sudo pm2 startup 
sudo pm2 save

chmod +x /scripts/test.sh
sh "source scripts/test.sh"

