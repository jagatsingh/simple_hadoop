# Create data folders
source /vagrant/scripts/common.sh
source /vagrant/install_config.txt

cd ${MY_HOME}/${PROJECT}

# Extract binaries

sudo tar -xzvf /vagrant/binaries/java/32/jdk*

# Environment variables

export_env_variable JAVA_HOME=${MY_HOME}/${PROJECT}/jdk1.7.0_51


#echo "PATH=$PATH:${MY_HOME}/${PROJECT}/jdk1.7.0_51/bin" >> ${MY_HOME}/.bashrc
