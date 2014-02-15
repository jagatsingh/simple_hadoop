# About Simple Hadoop

This project makes you to play with Hadoop right away. No need to install your self will make process easy to start.


# Why not use other VMs , Packages already available

I have tried to keep it align with Apache Binaries. You might ask why ?

Because this is the way you learn more when you install yourself from binaries , the automated tools like CM , Ambari
hides all things behind the scene and you don't learn.

Further those big installers need that you have high RAM and powerful machines. You can run simple_hadoop on simple machines. If you have 2 GB RAM system you are good to go.

This gives you power to choose which version of which component to try out in my virtual machine.

Just replace that in Binaries folder and you can build a new machine.

# How to use it

Just install on your system

* Virtual Box https://www.virtualbox.org/wiki/Downloads
* Vagrant http://www.vagrantup.com/downloads.html
* Clone this repo
* Download the binaries and Virtual Image Box from net

After this just do 

# How to use

vagrant up

Login to VM with ssh

127.0.0.1
Username and password

vagrant / vagrant

Note the ip of the machine using 

ifconfig

Start Hadoop

$hdfs namenode -format
$start-dfs.sh
$start-yarn.sh

Open the web page

http://ip:8088 

Check that you are able to see Hadoop running


Spark

You can run sample Spark Jobs on Yarn

Example

Go to Spark home dir

/home/vagrant/simple_hadoop/spark-0.9.0-incubating-bin-hadoop2

Start Spark master

./sbin/start-master.sh

Go to 

http://ip:8080 to check that master has started

Note the master details from above page

Start Spark Worker

 ./bin/spark-class org.apache.spark.deploy.worker.Worker spark://precise32:7077

 Go to Spark master Web UI see that it has got new worker.
 

Running Spark on YARN Sample

Execute this command

SPARK_JAR=./assembly/target/scala-2.10/spark-assembly_2.10-0.9.0-incubating-hadoop2.2.0.jar \
    ./bin/spark-class org.apache.spark.deploy.yarn.Client \
      --jar examples/target/scala-2.10/spark-examples_2.10-assembly-0.9.0-incubating.jar \
      --class org.apache.spark.examples.SparkPi \
      --args yarn-standalone \
      --num-workers 1 \
      --master-memory 4g \
      --worker-memory 2g \
      --worker-cores 1

Or you can also use
	  
SPARK_JAR=./assembly/target/scala-2.10/spark-assembly_2.10-0.9.0-incubating-hadoop2.2.0.jar  \
SPARK_YARN_APP_JAR=examples/target/scala-2.10/spark-examples_2.10-assembly-0.9.0-incubating.jar \
./bin/run-example org.apache.spark.examples.SparkPi yarn-client


Read http://spark.incubator.apache.org/docs/latest/spark-standalone.html for more details

Credits: A blog post on Cloudera website which first introduced me to Vagrant.

http://blog.cloudera.com/blog/2013/04/how-to-use-vagrant-to-set-up-a-virtual-hadoop-cluster/

# Supported tools

* Hadoop pseudo mode
* Spark 
* Scala
* Java

# How it works 

Basically it just do all what is mentioned here in blog post automatically for you

Hadoop
http://jugnu-life.blogspot.com/2012/05/hadoop-20-install-tutorial-023x.html

Spark
http://jugnu-life.blogspot.com/2013/08/spark-standalone-mode-installation-steps.html

You can read there on what's happening , so that you have solid understanding on what is required to make Hadoop up and running.

Then you use Vagrant to start the machine based on the virtual box created by Packer.

# Background

When I started playing with Hadoop I wrote blog post how to install it on Single node.

http://jugnu-life.blogspot.com/2012/03/hadoop-installation-tutorial.html

Everyday I get emails or Linkedin contacts from people about issues they have.

So I thought lets put a ready made virtual box image and put it here so that people can start playing with it right away.


# Suggestions

jagatsingh@gmail.com


# To do `

Make it general so that we can just drop tar ball and config files for any new application.
Example pig / hive etc and Vagrant should take it up

Make Packer images setup

