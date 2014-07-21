#!/bin/sh
# This file contains settings which are overridden as per my home setup.
# You don't need this file. But i am documenting how I am using this


# I have setup a master Ubuntu machine which serves the all the machines 
# so that i dont hit internet everytime to get package.
# Read more about Ubuntu proxy at 
# http://jugnu-life.blogspot.com/2013/09/how-to-share-packages-with-other-ubuntu.html

# Copy the Ubuntu master apt proxy
sudo cp /vagrant/files/01proxy /etc/apt/apt.conf.d

# This is hosts file which tells the VM about other machines in system
# Tell about where is master
sudo cp /vagrant/files/hosts /etc/