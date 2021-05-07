
#!/bin/sh

cd /home/node

## GH CLI v1.9.2
wget -nc https://github.com/cli/cli/releases/download/v1.9.2/gh_1.9.2_linux_amd64.deb
dpkg -i gh_1.9.2_linux_amd64.deb

## Setup Exercism workspace folder
mkdir -p /home/node/exercism
cd /home/node/exercism
wget -nc https://github.com/exercism/cli/releases/download/v3.0.13/exercism-3.0.13-linux-x86_64.tar.gz
tar -xf exercism-3.0.13-linux-x86_64.tar.gz
mkdir -p ~/bin
mv exercism ~/bin
echo 'export PATH=~/bin:$PATH' >> ~/.bash_profile
sudo -s source ~/.bash_profile
mkdir /workspaces/exercism