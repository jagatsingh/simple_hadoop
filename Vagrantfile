VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

config.vm.define :master do |master|
    master.vm.box = "precise32"
	master.vm.provider "virtualbox" do |vb|
		vb.customize ["modifyvm", :id, "--cpuexecutioncap", "80"]
		vb.memory = 16024
		vb.customize ["modifyvm", :id, "--cpus", "6"]   
		vb.customize ["modifyvm", :id, "--ioapic", "on"]
	end
	master.vm.provision :shell, path: "scripts/setup.sh"
	master.vm.network "private_network" , ip: "192.168.50.6" ,
	 	 virtualbox__intnet: "vagrantnat"
	master.vm.synced_folder "G:\\", "/host/data"

end


config.vm.define :slave do |slave|
    slave.vm.box = "precise32"
	slave.vm.provision :shell, path: "scripts/setup.sh"
	slave.vm.network "private_network" , ip: "192.168.50.5" ,
	 virtualbox__intnet: "vagrantnat"
	slave.vm.synced_folder "G:\\", "/host/data"
end


end

