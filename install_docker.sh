#!/bin/bash
sudo apt-get update

sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    git \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get -y install docker.io docker-compose

# add current user to docker group so there is no need to use sudo when running docker
sudo usermod -aG docker $(whoami)
newgrp docker

##Enable docker on startup
sudo systemctl enable docker