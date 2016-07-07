#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade -y
#sudo apt-get -y install python-novaclient python-neutronclient python-glanceclient python-cinderclient python-swiftclient python-heatclient python-openstackclient
sudo apt-get -y install python-pip python-dev libffi-dev
sudo pip install -r /vagrant/requirements.txt
sudo pip install python-openstackclient
sudo pip install python-glancelcient
sudo pip install python-novaclient
sudo pip install python-neutronclient
if [[ -f /vagrant/openrc ]]
then
	sudo cp /vagrant/openrc /root
	sudo cp /vagrant/openrc .
fi
