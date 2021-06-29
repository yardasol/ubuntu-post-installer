#! /bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install curl vim git -y
sudo apt install gcc g++ gfortran make cmake -y
sudo apt install gimp -y
sudo apt update

# install anaconda
wget https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh
bash Anaconda3-2021.05-Linux-x86_64.sh
sudo apt install update

# install zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb -y

# install Zotero
wget https://raw.githubusercontent.com/samgdotson/ubuntu-post-installer/master/zotero_installer.sh
bash zotero_installer.sh

# install LaTeX
sudo apt install texlive-full -y
sudo apt update
