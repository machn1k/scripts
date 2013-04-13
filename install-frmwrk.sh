#!/bin/bash
# ***************************************************************************
# INSTALL FRAMEWORKS
#
# ***************************************************************************

#sudo gem install -v=1.2.3 rails
sudo git clone https://github.com/rapid7/metasploit-framework.git /opt/msf
sudo ln -s /usr/local/opt/msf/msf* /usr/local/bin/

# Social Engineer Toolkit
sudo git clone https://github.com/trustedsec/social-engineer-toolkit.git /opt/set
#MAKE WRAPPER SCRIPT IN PATH

# w3af
sudo git clone https://github.com/andresriancho/w3af.git /opt/w3af
cd /opt/w3af 
sudo git checkout threading2
sudo ln -s /usr/local/opt/w3af/w3af* /usr/local/bin/

# Recon-ng
sudo git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git /opt/recon-ng
#MAKE WRAPPER SCRIPT IN PATH

# Reg-Ripper
sudo mkdir /opt/rr && cd /opt/rr
sudo wget http://winforensicaanalysis.googlecode.com/files/RR.zip
sudo unzip RR* && sudo rm RR*.zip
