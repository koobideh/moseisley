#!/bin/sh

sudo apt install ufw

sudo ufw allow from 192.168.1.0/24 to any port 22
sudo ufw allow from 192.168.1.0/24 to any port 53
sudo ufw allow proto tcp from 192.168.1.0/24 to any port 80
sudo ufw allow proto tcp from 192.168.1.0/24 to any port 8022

sudo ufw allow from 10.8.0.0/24 to any port 22
sudo ufw allow from 10.8.0.0/24 to any port 53
sudo ufw allow proto tcp from 10.8.0.0/24 to any port 80
sudo ufw allow proto tcp from 10.8.0.0/24 to any port 8022

sudo ufw allow from 172.17.0.0/24 to any port 53
sudo ufw allow proto tcp from 172.17.0.0/24 to any port 80

sudo ufw allow proto tcp from 0.0.0.0/0 to any port 32400
