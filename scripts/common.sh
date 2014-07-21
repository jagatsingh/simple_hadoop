#!/bin/sh


# General function to export environment variables to .bashrc

export_env_variable()
{
 
 echo "export $1" >> /home/vagrant/.bashrc

}

# Just update the apt repo
# apt-get update

# Give password less sudo to vagrant user
echo "vagrant ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers