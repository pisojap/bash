#!/usr/bin/env bash
USER_HOME=$(eval echo ~${SUDO_USER})
#echo ${USER_HOME}
cd ${USER_HOME}
apt install fonts-powerline
apt install fonts-firacode
curl -s https://api.github.com/repos/starship/starship/releases/latest   | grep browser_download_url   | grep x86_64-unknown-linux-gnu   | cut -d '"' -f 4   | wget -qi - 
tar xvf starship-*.tar.gz
mv starship /usr/local/bin/
starship --version
echo 'eval "$(starship init bash)"' >> .bashrc
source .bashrc
