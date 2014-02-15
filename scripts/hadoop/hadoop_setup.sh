# Source common stuff
source /vagrant/scripts/common.sh
source /vagrant/install_config.txt


cd ${MY_HOME}/${PROJECT}

# Extract binaries

sudo tar -xzvf /vagrant/binaries/hadoop/hadoop* 

# Environment variables

export_env_variable HADOOP_PREFIX=${MY_HOME}/${PROJECT}/hadoop-2.2.0
export_env_variable HADOOP_MAPRED_HOME=${MY_HOME}/${PROJECT}/hadoop-2.2.0
export_env_variable HADOOP_COMMON_HOME=${MY_HOME}/${PROJECT}/hadoop-2.2.0
export_env_variable HADOOP_HDFS_HOME=${MY_HOME}/${PROJECT}/hadoop-2.2.0
export_env_variable YARN_HOME=${MY_HOME}/${PROJECT}/hadoop-2.2.0
export_env_variable HADOOP_CONF_DIR=${MY_HOME}/${PROJECT}/hadoop-2.2.0/etc/hadoop

echo "PATH=$PATH:${MY_HOME}/${PROJECT}/jdk1.7.0_51/bin:${MY_HOME}/${PROJECT}/hadoop-2.2.0/bin:${MY_HOME}/${PROJECT}/hadoop-2.2.0/sbin" >> ${MY_HOME}/.bashrc
sudo chown -R vagrant:vagrant ${MY_HOME}/
# Append the Java home to hadoop environment file
echo "export JAVA_HOME="${MY_HOME}/${PROJECT}/jdk1.7.0_51"" >> ${MY_HOME}/${PROJECT}/hadoop-2.2.0/etc/hadoop/hadoop-env.sh

# Create Hadoop data directories

sudo mkdir -p ${MY_HOME}/${PROJECT}/data/hadoop-2.2.0/dfs/name
sudo mkdir -p ${MY_HOME}/${PROJECT}/data/hadoop-2.2.0/dfs/data
sudo mkdir -p ${MY_HOME}/${PROJECT}/data/hadoop-2.2.0/mapred/system
sudo mkdir -p ${MY_HOME}/${PROJECT}/data/hadoop-2.2.0/mapred/local
sudo chown -R vagrant:vagrant ${MY_HOME}/

# Copy the configuration files
cp -f /vagrant/conf/hadoop/etc/hadoop/* ${MY_HOME}/${PROJECT}/hadoop-2.2.0/etc/hadoop


# Login to VM with username password
# vagrant and vagrant
# Check the IP which the machine has been given using command ifconfig
# Start Hadoop by below commands. When you first execute command ssh will ask you to validate key , just accept it.

# Commands to Start Hadoop
#hdfs namenode -format
#start-all.sh
#start-yarn.sh

# Check , just run jps command to see all hadoop services are up
# Login from your host machine to cluster webui with IP:8088 port

