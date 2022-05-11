#!/usr/bin/bash

#This script gets executed before codespaces default configuration

# aws-cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install -i ~/.local/aws-cli -b ~/bin --update
rm -rf awscliv2.zip aws
