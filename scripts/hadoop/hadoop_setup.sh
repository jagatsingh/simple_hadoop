# Source common stuff
source /vagrant/scripts/common.sh
source /vagrant/install_config.txt


cd ${MY_HOME}/${PROJECT}

# Extract binaries

sudo tar -xzvf /vagrant/binaries/hadoop/${SH_HADOOP_VERSION}.tar.gz

# Environment variables

export_env_variable HADOOP_PREFIX=${MY_HOME}/${PROJECT}/${SH_HADOOP_VERSION}
export_env_variable HADOOP_MAPRED_HOME=${MY_HOME}/${PROJECT}/${SH_HADOOP_VERSION}
export_env_variable HADOOP_COMMON_HOME=${MY_HOME}/${PROJECT}/${SH_HADOOP_VERSION}
export_env_variable HADOOP_HDFS_HOME=${MY_HOME}/${PROJECT}/${SH_HADOOP_VERSION}
export_env_variable YARN_HOME=${MY_HOME}/${PROJECT}/${SH_HADOOP_VERSION}
export_env_variable HADOOP_CONF_DIR=${MY_HOME}/${PROJECT}/${SH_HADOOP_VERSION}/etc/hadoop

echo "PATH=$PATH:${MY_HOME}/${PROJECT}/${SH_JAVA_VERSION}/bin:${MY_HOME}/${PROJECT}/${SH_HADOOP_VERSION}/bin:${MY_HOME}/${PROJECT}/${SH_HADOOP_VERSION}/sbin" >> ${MY_HOME}/.bashrc
sudo chown -R vagrant:vagrant ${MY_HOME}/
# Append the Java home to hadoop environment file
echo "export JAVA_HOME="${MY_HOME}/${PROJECT}/${SH_JAVA_VERSION}"" >> ${MY_HOME}/${PROJECT}/${SH_HADOOP_VERSION}/etc/hadoop/hadoop-env.sh

# Create Hadoop data directories

sudo mkdir -p ${MY_HOME}/${PROJECT}/data/hadoop/dfs/name
sudo mkdir -p ${MY_HOME}/${PROJECT}/data/hadoop/dfs/data
sudo mkdir -p ${MY_HOME}/${PROJECT}/data/hadoop/mapred/system
sudo mkdir -p ${MY_HOME}/${PROJECT}/data/hadoop/mapred/local


# Copy the configuration files
cp -f /vagrant/conf/hadoop/etc/hadoop/* ${MY_HOME}/${PROJECT}/${SH_HADOOP_VERSION}/etc/hadoop


# Login to VM with username password
# vagrant and vagrant
# Check the IP which the machine has been given using command ifconfig
# Start Hadoop by below commands. When you first execute command ssh will ask you to validate key , just accept it.

# Commands to Start Hadoop
#hdfs namenode -format
#start-all.sh

#or 
#start-dfs.sh
#start-yarn.sh

# Check , just run jps command to see all hadoop services are up
# Login from your host machine to cluster webui with IP:8088 port

