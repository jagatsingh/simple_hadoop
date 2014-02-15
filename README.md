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

vagrant up

Credits: A blog post on Cloudera website which first introduced me to Vagrant.

http://blog.cloudera.com/blog/2013/04/how-to-use-vagrant-to-set-up-a-virtual-hadoop-cluster/



# How it works 

Basically it just do all what is mentioned here in blog post automatically for you

http://jugnu-life.blogspot.com/2012/05/hadoop-20-install-tutorial-023x.html

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

