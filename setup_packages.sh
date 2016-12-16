#!/bin/bash -e
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo apt-get update
sudo apt-get install -y apcalc\
                        ccze\
                        conky\
                        colormake\
                        ctags\
                        curl\
                        dwm\
                        gcc\
                        git\
                        gitk\
                        google-chrome-stable\
                        libpango1.0-dev\
                        libx11-dev\
                        libxft-dev\
                        libxi-dev\
                        libxinerama-dev\
                        libxtst-dev\
                        make\
                        pkg-config\
                        qt5-default\
                        tmux\
                        vim
