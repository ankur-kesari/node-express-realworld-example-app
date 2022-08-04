#!/bin/bash

#aws-code-deploy-agent-installation-for-us-west-2
echo "aws-code-deploy-agent-installation-for-us-west-2"
sudo apt update -y
sudo apt install ruby-full
sudo apt install wget
wget https://aws-codedeploy-us-west-2.s3.us-west-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start
#---------------------------------------------------------
# nodejs-npm-pm2-installation
echo "nodejs-npm-pm2-installation"
sudo apt install nodejs npm -y
sudo npm install pm2 -g



