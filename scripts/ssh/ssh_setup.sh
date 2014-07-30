#!/bin/sh
. /vagrant/scripts/common.sh
. /vagrant/install_config.txt

# Setup ssh keys for vagrant user
ssh-keygen -t dsa -P '' -f ${MY_HOME}/.ssh/id_dsa
sudo cat ${MY_HOME}/.ssh/id_dsa.pub >> ${MY_HOME}/.ssh/authorized_keys
sudo chmod go-w ${MY_HOME} ${MY_HOME}/.ssh
sudo chmod 600 ${MY_HOME}/.ssh/authorized_keys
sudo chown vagrant ${MY_HOME}/.ssh/authorized_keys