# Create data folders
source /vagrant/scripts/common.sh
source /vagrant/install_config.txt

sudo mkdir ${MY_HOME}/${PROJECT}
cd ${MY_HOME}/${PROJECT}

# Execute common stuff

/vagrant/scripts/common.sh

# Execute specific personal override settings

/vagrant/scripts/personal_env_setup.sh

# Setup SSH
/vagrant/scripts/ssh/ssh_setup.sh

# Setup Java
/vagrant/scripts/java/java_setup.sh

# Setup Hadoop
/vagrant/scripts/hadoop/hadoop_setup.sh

# Setup Zookeeper
#/vagrant/scripts/zookeeper/zookeeper_setup.sh

# Setup Scala
#/vagrant/scripts/scala/scala_setup.sh

# Setup Spark
#/vagrant/scripts/spark/spark_setup.sh

# Setup Solr
#/vagrant/scripts/solr/solr_setup.sh

# Setup Lily
#/vagrant/scripts/lily/lily_setup.sh

# Setup Hue
#/vagrant/scripts/hue/hue_setup.sh

echo "PATH=$PATH:${MY_HOME}/${PROJECT}/${SH_JAVA_VERSION}/bin:${MY_HOME}/${PROJECT}/${SH_HADOOP_VERSION}/bin:${MY_HOME}/${PROJECT}/${SH_HADOOP_VERSION}/sbin:${MY_HOME}/${PROJECT}/${SH_SCALA_VERSION}/bin:${MY_HOME}/${PROJECT}/${SH_SPARK_VERSION}/bin:${MY_HOME}/${PROJECT}/${SH_ZOOKEEPER_VERSION}/bin" >> ${MY_HOME}/.bashrc

sudo chown -R vagrant:vagrant ${MY_HOME}/
