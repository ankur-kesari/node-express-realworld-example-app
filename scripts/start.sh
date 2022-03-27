#!/bin/bash
cd /home/ubuntu/node-app
sudo pm2 start app.js
sudo pm2 startup 
