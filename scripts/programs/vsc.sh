#!/bin/bash

# Visual Studio Code
# https://code.visualstudio.com/docs/setup/linux

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code

ln -s $(pwd)/../../vscode/vsc_settings.json $HOME/.config/Code/User/settings.json
function install {
  name="${1}"
  code --install-extension ${name} --force
}
install coenraads.bracket-pair-colorizer-2
install davidanson.vscode-markdownlint
install emmanuelbeziat.vscode-great-icons
install esbenp.prettier-vscode
install dsznajder.es7-react-js-snippets
install eamodio.gitlens
# install streetsidesoftware.code-spell-checker
install yzhang.markdown-all-in-one

