# Create data folders
source /vagrant/scripts/common.sh
source /vagrant/install_config.txt

sudo mkdir ${MY_HOME}/${PROJECT}
cd ${MY_HOME}/${PROJECT}

# Setup SSH
/vagrant/scripts/ssh/ssh_setup.sh

# Setup Java
/vagrant/scripts/java/java_setup.sh

# Setup Hadoop
/vagrant/scripts/hadoop/hadoop_setup.sh

# Setup Scala
/vagrant/scripts/scala/scala_setup.sh

# Setup Spark
/vagrant/scripts/spark/spark_setup.sh


echo "PATH=$PATH:${MY_HOME}/${PROJECT}/jdk1.7.0_51/bin:${MY_HOME}/${PROJECT}/hadoop-2.2.0/bin:${MY_HOME}/${PROJECT}/hadoop-2.2.0/sbin:${MY_HOME}/${PROJECT}/scala-2.10.3/bin:${MY_HOME}/${PROJECT}/spark-0.9.0-incubating-bin-hadoop2/bin" >> ${MY_HOME}/.bashrc