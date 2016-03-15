#!/bin/sh

sudo apt-get update
sudo apt-get install -y python-pip python-dev python-virtualenv build-essential
sudo apt-get install -y libatlas-base-dev gfortran
sudo apt-get build-dep -y python-matplotlib
pip install -r /vagrant/requirements.txt
sudo unlink /etc/init.d/jupyter
sudo ln -s /vagrant/init.d/jupyter /etc/init.d/jupyter
sudo chmod 755 /etc/init.d/jupyter
sudo update-rc.d jupyter defaults 97 03
unlink /home/vagrant/.jupyter
ln -s /vagrant/.jupyter /home/vagrant/.jupyter
sudo service jupyter restart
