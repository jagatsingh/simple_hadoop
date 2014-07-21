#!/bin/sh
source ../install_config.txt

echo "Downloading $APACHE_MIRROR/hadoop/common/$SH_HADOOP_VERSION/$SH_HADOOP_VERSION.tar.gz"
# -P hadoop says , store to directory named hadoop
#wget -P hadoop $APACHE_MIRROR/hadoop/common/$SH_HADOOP_VERSION/$SH_HADOOP_VERSION.tar.gz

# From http://stackoverflow.com/questions/10268583/how-to-automate-download-and-installation-of-java-jdk-on-linux
# Value of Jdk has been hardcoded here
#wget -P java --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u65-b17/jdk-7u65-linux-x64.tar.gz

wget -P java --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u65-b17/jdk-7u65-linux-i586.tar.gz



