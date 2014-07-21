#!/bin/sh
# Create data folders
. /vagrant/scripts/common.sh
. /vagrant/install_config.txt

cd ${MY_HOME}/${PROJECT}

# Extract binaries

sudo tar -xzvf /vagrant/binaries/java/jdk*gz

# Environment variables

export_env_variable JAVA_HOME=${MY_HOME}/${PROJECT}/${SH_JAVA_VERSION}


#echo "PATH=$PATH:${MY_HOME}/${PROJECT}/jdk1.7.0_51/bin" >> ${MY_HOME}/.bashrc

