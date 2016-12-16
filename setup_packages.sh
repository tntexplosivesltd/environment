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
                        git\
                        gitk\
                        google-chrome-stable\
                        libpango1.0-dev\
                        libxft-dev\
                        libxinerama-dev
                        qt5-default\
                        tmux\
                        vim
