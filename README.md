About

Simple Hadoop

This project makes you to play with Hadoop right away. No need to install your self this will make process easy to start.

Just install on your system

Virtual Box
Vagrant
And download this one Virtual Box image

And do 

Vagrant up

Credits: A blog post on Cloudera website which first introduced me to Vagrant.

http://blog.cloudera.com/blog/2013/04/how-to-use-vagrant-to-set-up-a-virtual-hadoop-cluster/



`Why its different from other images`

I have tried to keep it align with Apache Binaries. You might ask why ?

Because this is the way you learn more when you install yourself from binaries , the automated tools like CM , Ambari
hides all things behind the scene and you don't learn.

Further those big installers need that you to have big RAM and powerful machines. You can run this on bare minimum setup. If you have 2 GB RAM system you are good to go.

This gives you power to choose which version of which component to try out in my virtual machine.

Just replace that in Binaries folder and you can build a new machine.


`How it works`

This uses the Packer (to do) to build the vagrant image which has already copied the binaries and components for Hadoop single node.
Basically it just do all what is mentioned here in blog post automatically for you

http://jugnu-life.blogspot.com/2012/05/hadoop-20-install-tutorial-023x.html

You can read there on what's happening , so that you have solid understanding on what is required to make Hadoop up and running.

Then you use Vagrant to start the machine based on the virtual box created by Packer.

`Background`

When i started playing with Hadoop i wrote blog post how to install it on Single node.

http://jugnu-life.blogspot.com/2012/03/hadoop-installation-tutorial.html

Everyday I get emails or Linkedin contacts from people about issues they have.

So i thought lets put a ready made virtual box image and put it here so that people can start playing with it right away.


Versions

virtualbox 4.3.6

Suggestions

jagatsingh@gmail.com


` To do `

Make it general so that we can just drop tar ball and confi files for any new application.
Example pig / hive etc and Vagrant should take it up

Make Packer images setup

