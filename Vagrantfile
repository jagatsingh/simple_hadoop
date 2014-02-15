VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

config.vm.define :master do |master|
    master.vm.box = "precise32"
	master.vm.provision :shell, path: "scripts/setup.sh"
	master.vm.network "public_network"
end


end


