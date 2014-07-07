source ../install_config.txt

echo "Downloading $APACHE_MIRROR/hadoop/common/$SH_HADOOP_VERSION/$SH_HADOOP_VERSION.tar.gz"
# -P hadoop says , store to directory named hadoop
wget -P hadoop $APACHE_MIRROR/hadoop/common/$SH_HADOOP_VERSION/$SH_HADOOP_VERSION.tar.gz


