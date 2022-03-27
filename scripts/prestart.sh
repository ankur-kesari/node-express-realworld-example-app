#!/bin/bash
cd /home/ubuntu/node-app
sudo apt-get update
sudo apt-get install nodejs npm -y
sudo npm install #to be uncomented if buildspec.yml config not worked.
sudo npm install pm2 -g
