#!/bin/bash

echo "installing $1"

sudo apt update -y
sudo apt-get install $1 -y
