#! /bin/bash
BRC=$HOME/.bashrc

sudo apt update
sudo apt upgrade -y
sudo apt install curl vim git -y
sudo apt install gcc g++ gfortran make cmake -y
sudo apt install gimp -y
sudo apt update

# Add git branch to prompt
echo "parse_git_branch() {" >> $BRC
echo "  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'" >> $BRC
echo "}" >> $BRC
echo "export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$(parse_git_branch)\[\033[00m\]$ "" >> $BRC

# install Write
wget -O - http://www.styluslabs.com/download/write-tgz | tar -C $HOME -xJ

# install Thunderbird
wget -O - https://download.mozilla.org/?product=thunderbird-78.11.0-SSL&os=linux64&lang=en-US | tar -C $HOME -xj

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
