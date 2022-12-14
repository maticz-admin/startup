#!/bin/bash

# update & upgrade 
sudo apt-get update
sudo apt-get upgrade -y

# install mongo-server
sudo apt-get install software-properties-common -y
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt install mongodb-org -y
sudo systemctl start mongod
sudo systemctl enable mongod

# install node via nvm
sudo apt-get install curl -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm install v14.19.2
npm i pm2 -g


# postman
sudo snap install --classic postman

# robo3t
sudo snap install robo3t-snap

# visual studio code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https -y
sudo apt update
sudo apt-get install code -y

# sublime text editor
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text -y

# google chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# git
sudo apt-get insall git -y

# github desktop
sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.9.3-linux3/GitHubDesktop-linux-2.9.3-linux3.deb
sudo dpkg -i GitHubDesktop-linux-2.9.3-linux3.deb

# skype 
sudo apt-get install libatomic1 -y
sudo wget -O skype.deb https://repo.skype.com/latest/skypeforlinux-64.deb
sudo dpkg -i skype.deb
# vokoscreen
sudo apt install vokoscreen -y

# zip & unzip package
sudo apt-get install zip unzip -y

# filezilla
sudo apt-get install filezilla -y

# ssh 
sudo apt-get install openssh-server

# htop
sudo apt-get install htop



