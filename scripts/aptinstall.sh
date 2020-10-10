#!/bin/bash

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install chromium-browser
install curl
install exfat-utils
install file
install git
install vim
install okular
install python3-venv 
install python3-pip
install build-essential
install adb
install fastboot
install fonts-firacode


# Fun stuff
install figlet
# install lolcat


# Extras
# install openvpn