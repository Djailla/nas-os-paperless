#!/bin/bash

mkdir -m 755 -p /opt/

install -m 755 /home/source/rc.local /etc

apt-get update
apt-get install -y -q python3 python3-pip curl git libjpeg8 libjpeg8-dev
rm /usr/bin/python
ln -s /usr/bin/python3 /usr/bin/python
rm /usr/bin/pip
ln -s /usr/bin/pip-3.2 /usr/bin/pip

# Checkout sources in /opt
cd /opt/
git clone --depth=1 https://github.com/danielquinn/paperless.git
pip install --requirement /opt/paperless/requirements.txt

exit 0
