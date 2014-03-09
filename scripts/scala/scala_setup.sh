# Source common stuff
source /vagrant/scripts/common.sh
source /vagrant/install_config.txt

sudo mkdir ${MY_HOME}/${PROJECT}
cd ${MY_HOME}/${PROJECT}

sudo tar -xzvf /vagrant/binaries/scala/${SH_SCALA_VERSION}.tgz

export_env_variable SCALA_HOME=${MY_HOME}/${PROJECT}/${SH_SCALA_VERSION}

#echo "PATH=$PATH:${MY_HOME}/${PROJECT}/${SH_SCALA_VERSION}/bin" >> ${MY_HOME}/.bashrc


