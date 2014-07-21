VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

config.vm.define :master do |master|
    master.vm.box = "precise32"
	master.vm.provider "virtualbox" do |vb|
		vb.customize ["modifyvm", :id, "--cpuexecutioncap", "80"]
		vb.memory = 10000
		vb.customize ["modifyvm", :id, "--ioapic", "on"]
	end
	master.vm.provision :shell, path: "scripts/setup.sh"
	master.vm.network "private_network" , ip: "192.168.13.13" ,
	 	 virtualbox__intnet: "vagrantnat"
	# Forward various ports to view webpages
	master.vm.network :forwarded_port, guest: 8088, host: 8088


end

end

