#!/bin/bash

echo "ENTER KEY (i.e. 4111A718): "
read key

cd /var/lib/apt/lists
sudo gpg --keyserver subkeys.pgp.net --recv-keys $key
sudo gpg -a --export $key | sudo apt-key add -
