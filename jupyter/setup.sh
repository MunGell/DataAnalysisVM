#!/bin/sh

sudo apt-get install -y python-pip python-dev python-virtualenv build-essential
sudo apt-get install -y libatlas-base-dev gfortran
sudo apt-get build-dep -y python-matplotlib
pip install -r /vagrant/jupyter/requirements.txt
sudo unlink /etc/init.d/jupyter
sudo cp /vagrant/jupyter/jupyter /etc/init.d/jupyter
sudo chmod +x /etc/init.d/jupyter
mkdir /home/vagrant/.jupyter
cp /vagrant/jupyter/jupyter_notebook_config.py /home/vagrant/.jupyter/jupyter_notebook_config.py