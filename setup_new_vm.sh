#!/bin/bash

# Setup system dependencies and tools
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y python-virtualenv tmux

# Setup dotfiles
rm -f ~/.gitconfig
ln -s $(readlink -f dotfiles/gitconfig) ~/.gitconfig

# Setup python virtual environment
rm -rf ~/env/py3
virtualenv -p $(which python3) ~/env/py3
source ~/env/py3/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
