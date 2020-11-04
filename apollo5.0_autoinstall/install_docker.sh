#!/bin/bash

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo groupadd docker 
sudo usermod -aG docker $USER 

sudo apt-get update


sudo apt-get install \  
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88


sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"


sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo apt-cache madison docker-ce

sudo apt-get install docker-ce=5:19.03.12~3-0~ubuntu-xenial docker-ce-cli=5:19.03.12~3-0~ubuntu-xenial containerd.io

