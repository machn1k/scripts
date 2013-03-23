#!/bin/bash

# GIT Updates for Social-Engineer Toolkit, Metasploit, and w3af
cd /usr/local/opt/set && sudo git pull
cd /usr/local/opt/msf && sudo git pull
cd /usr/local/opt/w3af && sudo git pull
cd /usr/local/opt/recon-ng && sudo git pull

# Ruby-Gems & MacPorts
sudo gem update

# MacPorts
sudo port selfupdate
sudo port upgrade outdated

# Apple Software Update
sudo softwareupdate -iva
