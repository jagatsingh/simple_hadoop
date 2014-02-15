# Source common stuff
source /vagrant/scripts/common.sh
source /vagrant/install_config.txt

sudo mkdir ${MY_HOME}/${PROJECT}
cd ${MY_HOME}/${PROJECT}

sudo tar -xzvf /vagrant/binaries/scala/scala*

export_env_variable SCALA_HOME=${MY_HOME}/${PROJECT}/scala-2.10.3

#echo "PATH=$PATH:${MY_HOME}/${PROJECT}/scala-2.10.3/bin" >> ${MY_HOME}/.bashrc


