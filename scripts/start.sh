#!/bin/bash
cd /home/ubuntu/node-app
sudo pm2 start app.js
sudo pm2 startup 
sudo pm2 save

sudo apt install -y awscli
export AWS_DEFAULT_REGION=us-east-1

#attach role AmazonSSMReadOnlyaccess

export NODE_ENV=$(aws ssm get-parameter --name "NODE_ENV" --with-decrypt --query "Parameter.Value" --output text)

export SHOTSTACK_KEY=$(aws ssm get-parameter --name "SHOTSTACK_KEY" --with-decrypt --query "Parameter.Value" --output text)

