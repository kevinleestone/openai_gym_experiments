#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y python-virtualenv tmux

virtualenv -p $(which python3) ~/env/py3
source ~/env/py3/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
