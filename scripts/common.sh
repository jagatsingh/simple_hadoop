

# General function to export environment variables to .bashrc

export_env_variable()
{
 
 echo "export $1" >> /home/vagrant/.bashrc

}

