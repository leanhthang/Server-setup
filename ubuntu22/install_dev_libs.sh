#!/bin/bash

echo "=== Install dependencies for compiling Ruby ==="

sudo apt-get update
sudo apt-get install curl gnupg git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev -y

echo "=== Install Node JS ==="
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "=== Install Nginx ==="
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx

echo "=== Install Redis ==="
sudo apt-get install redis-server -y
sudo systemctl start redis-server
sudo systemctl enable redis-server

echo "=== Install Let's Encrypt SSL ==="
sudo apt update && sudo apt upgrade
sudo apt install certbot -y

echo "==================== END ===================="
