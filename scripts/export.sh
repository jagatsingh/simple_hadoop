export HADOOP_PREFIX="/home/vagrant/simple_hadoop/hadoop-2.2.0"
export JAVA_HOME="/home/vagrant/simple_hadoop/jdk1.7.0_51"
export HADOOP_MAPRED_HOME=${HADOOP_PREFIX}
export HADOOP_COMMON_HOME=${HADOOP_PREFIX}
export HADOOP_HDFS_HOME=${HADOOP_PREFIX}
export YARN_HOME=${HADOOP_PREFIX}
export "PATH=$PATH:$JAVA_HOME/.bin"
export "PATH=$PATH:$HADOOP_PREFIX/.bin"
export "PATH=$PATH:$HADOOP_PREFIX/.sbin"