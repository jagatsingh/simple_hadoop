#!/bin/sh

# Source common stuff
. /vagrant/scripts/common.sh
. /vagrant/install_config.txt


cd ${MY_HOME}/${PROJECT}

# Extract binaries

sudo tar -xzvf /vagrant/binaries/hive/${SH_HIVE_VERSION}.tar.gz

# Environment variables

export_env_variable HIVE_HOME=${MY_HOME}/${PROJECT}/${SH_HIVE_VERSION}

# Copy the configuration files
cp -f /vagrant/conf/hive/conf/* ${MY_HOME}/${PROJECT}/${SH_HIVE_VERSION}/conf