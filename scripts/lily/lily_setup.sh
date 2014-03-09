# Source common stuff
source /vagrant/scripts/common.sh
source /vagrant/install_config.txt

sudo mkdir ${MY_HOME}/${PROJECT}
cd ${MY_HOME}/${PROJECT}

sudo tar -xzvf /vagrant/binaries/lily/${SH_LILY_VERSION}.tar.gz

export_env_variable SOLR_HOME=${MY_HOME}/${PROJECT}/${SH_LILY_VERSION}

#echo "PATH=$PATH:${MY_HOME}/${PROJECT}/${SH_SCALA_VERSION}/bin" >> ${MY_HOME}/.bashrc