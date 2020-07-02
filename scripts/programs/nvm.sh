#!/bin/bash

echo "📦 Installing nvm"
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

# requires adding few lines to the .bashrc file.
source ~/.bashrc

nvm install node
nvm install-latest-npm

# installing packages
which npm &> /dev/null
if [ $? -ne 0 ]; then
  ./node_packages.sh
else
  echo "node/npm not installed!"
fi