#!/bin/bash

sudo echo "Europe/Berlin" | sudo tee /etc/timezone
sudo dpkg-reconfigure -f noninteractive tzdata

sudo apt-get update -y
sudo apt-get install -y language-pack-de
sudo apt-get install -y ntp

sudo docker run -d -p 1337:1337 --name webcdn-coordinator pmichelberger/webcdn_coordinator