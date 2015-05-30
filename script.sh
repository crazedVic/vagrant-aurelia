#!/usr/bin/env bash

echo "[PROVISION] Adding nodejs source to apt-get cache"
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
echo "[PROVISION] Installing latest version of nodejs and npm"
sudo apt-get install -y nodejs
echo "[PROVISION] Installing git"
sudo apt-get install -y git
echo "[PROVISION] Reconfiguring npm to install global modules to /home/vagrant/npm"
npm config set prefix ~/npm
echo "[PROVISION] Modifying paths and such in /home/vagrant/.bashrc"
echo 'export PATH="$PATH:$HOME/npm/bin"' >> ~/.bashrc
echo 'export NODE_PATH="$NODE_PATH:$HOME/npm/lib/node_modules"' >> ~/.bashrc
echo 'cd /vagrant/project' >> ~/.bashrc
echo 'echo "starting gulp watch..."' >> ~/.bashrc
echo 'gulp watch' >> ~/.bashrc
echo "[PROVISION] Reloading bashrc"
. ~/.bashrc
echo "[PROVISION] Adding your git credentials to ~/.netrc (required for jspm)"
echo "machine github.com" >> ~/.netrc
echo "login YOURGITHUBLOGIN" >> ~/.netrc
echo "password YOURGITHUBPASSWORD" >> ~/.netrc
echo "[PROVISION] Installing gulp"
npm install -g gulp
echo "[PROVISION] Installing jspm"
npm install -g jspm
# if you are using windows, either open cmd window as administrator OR uncomment
# the following line:
# npm config set bin-links false
echo "[PROVISION] Cloning Aurelia skeleton to /vagrant/project"
git clone https://github.com/aurelia/skeleton-navigation.git /vagrant/project
cd /vagrant/project
echo "[PROVISION] Running 'npm install' in Aurelia skeleton project"
npm install
echo "[PROVISION] Running 'jspm install' in Aurelia skeleton project"
/home/vagrant/npm/bin/jspm install -y
