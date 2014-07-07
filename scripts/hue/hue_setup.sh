# Source common stuff
source /vagrant/scripts/common.sh
source /vagrant/install_config.txt

sudo mkdir ${MY_HOME}/${PROJECT}
cd ${MY_HOME}/${PROJECT}

sudo tar -xzvf /vagrant/binaries/hue/${SH_HUE_VERSION}*

# Following libraries are required to build Hue
apt-get install make ant gcc g++ libkrb5-dev libmysqlclient-dev libssl-dev libsasl2-dev libsasl2-modules-gssapi-mit libsqlite3-dev libtidy-0.99-0 libxml2-dev libxslt-dev  libldap2-dev python-dev python-simplejson python-setuptools

# Hue binary is not pre built we have to build manually
cd ${MY_HOME}/${PROJECT}/${SH_HUE_VERSION}
make apps

export_env_variable HUE_HOME=${MY_HOME}/${PROJECT}/${SH_HUE_VERSION}

# Copy the configuration files
cp -f /vagrant/conf/hue/desktop/conf/* ${MY_HOME}/${PROJECT}/${SH_HUE_VERSION}/desktop/conf