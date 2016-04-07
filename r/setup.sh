#!/bin/sh

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo cp /vagrant/r/cpan.list /etc/apt/sources.list.d/cpan.list
sudo apt-key update
sudo apt-get update
sudo apt-get install -y r-base r-base-dev
sudo apt-get install -y libzmq3-dev
sudo R -e "install.packages(c('rzmq','repr','IRkernel','IRdisplay'), repos = c('http://irkernel.github.io/', 'http://cloud.r-project.org'), type = 'source')"
sudo R -e "IRkernel::installspec(user = FALSE)"
