# ---------------------------------------------------------------------------
# INSTALL FRAMEWORKS
# ---------------------------------------------------------------------------

sudo mkdir /usr/local/opt/
cd /usr/local/opt/

# Metasploit
sudo git clone https://github.com/rapid7/metasploit-framework.git /opt
sudo ln -s /usr/local/opt/msf/msf* /usr/local/bin/

# Social Engineer Toolkit
cd /usr/local/opt
sudo git clone https://github.com/trustedsec/social-engineer-toolkit/ set/
#MAKE WRAPPER SCRIPT IN YOUR PATH

# w3af
cd /usr/local/opt
sudo git clone https://github.com/andresriancho/w3af.git /w3af
cd w3af 
sudo git checkout threading2
sudo ln -s /usr/local/opt/w3af/w3af* /usr/local/bin/

# Recon-ng
cd /usr/local/opt
sudo git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git /recon-ng
#MAKE WRAPPER SCRIPT IN YOUR PATH

# Reg-Ripper
cd /usr/local/opt && sudo mkdir rr
cd rr && sudo wget http://winforensicaanalysis.googlecode.com/files/RR.zip
