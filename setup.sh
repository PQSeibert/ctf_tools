#!bin/bash

# This is a setup file to configure tools used in kali docker image for ctfs.
echo "SETUP :: START"
cd ~
pwd

# -----------------
apt-get update
apt-get -y upgrade

# -----------------
# Mics
apt-get install -y git
apt-get install -y vim
apt-get install -y tmux
apt-get install -y ssh
apt-get install -y tree
apt-get install -y curl
apt-get install -y w3m
apt-get install -y nodejs
apt-get install -y npm
apt-get install -y curl
apt-get install -y httpie
# Tools
apt-get install -y nmap
apt-get install -y ncat
apt-get install -y john
apt-get install -y nikto
apt-get install -y sqlmap
apt-get install -y metasploit
apt-get install -y tshark
apt-get install -y hydra
apt-get install -y crunch

# Sub Configurations
## Node
npm install -g npm
npm install -g n
npm install pm2 -g
git clone https://github.com/gchq/CyberChef.git
pushd ~/CyberChef
npm install
# npm run-script build
pm2 --name CyberChef start npm -- start
popd

## Python
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
pip install update pip
pip install chepy

# -----------------
# Dirs
mkdir ~/notes
mkdir ~/problems
mkdir ~/.ssh
mkdir ~/.vim

# Files
touch ~/.bashrc
touch ~/.bash_aliases
touch ~/.bash_env
touch ~/.vim/.vimrc
touch ~/.tmux.conf

echo "SETUP :: DONE"

