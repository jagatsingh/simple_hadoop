# Source common stuff
source /vagrant/scripts/common.sh
source /vagrant/install_config.txt

sudo mkdir ${MY_HOME}/${PROJECT}
cd ${MY_HOME}/${PROJECT}

sudo tar -xzvf /vagrant/binaries/spark/spark*

export_env_variable SPARK_HOME=${MY_HOME}/${PROJECT}/spark-0.9.0-incubating-bin-hadoop2

#echo "PATH=$PATH:${MY_HOME}/${PROJECT}/spark-0.9.0-incubating-bin-hadoop2/bin" >> ${MY_HOME}/.bashrc


mv ${MY_HOME}/${PROJECT}/spark-0.9.0-incubating-bin-hadoop2/conf/spark-env.sh.template ${MY_HOME}/${PROJECT}/spark-0.9.0-incubating-bin-hadoop2/conf/spark-env.sh


