# Source common stuff
source /vagrant/scripts/common.sh
source /vagrant/install_config.txt

sudo mkdir ${MY_HOME}/${PROJECT}
cd ${MY_HOME}/${PROJECT}

# Unzip the binary
sudo tar -xzvf /vagrant/binaries/zookeeper/${SH_ZOOKEEPER_VERSION}.tar.gz

# Create data folder
sudo mkdir -p ${MY_HOME}/${PROJECT}/data/zookeeper

# Copy the configuration files
cp -f /vagrant/conf/zookeeper/conf/* ${MY_HOME}/${PROJECT}/${SH_ZOOKEEPER_VERSION}/conf

export_env_variable ZOOKEEPER_HOME=${MY_HOME}/${PROJECT}/${SH_ZOOKEEPER_VERSION}

#echo "PATH=$PATH:${MY_HOME}/${PROJECT}/${SH_SCALA_VERSION}/bin" >> ${MY_HOME}/.bashrc