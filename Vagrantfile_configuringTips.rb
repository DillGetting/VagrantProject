# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box_check_update = false
  config.vm.allow_hosts_modification = true
  config.vm.define "ubuntu" do |vmbox|
		vmbox.vm.box = "ubuntu/focal64"
		vmbox.vm.define "Ubuntu"
		vmbox.vm.hostname = "shelltips-vagrant"
		vmbox.vm.network "public_network", bridge: "Intel(R) Dual Band Wireless-AC 7265", ip: "192.168.1.100"
		vmbox.vm.synced_folder ".", "/vagrant/", disabled: true
		vmbox.vm.synced_folder "/home/karthick/shelltips", "/vagrant/shelltips", disabled: false
		vmbox.vm.provider "virtualbox" do |vmvbox|
			vmvbox.memory = "2048"
			vmvbox.cpus = 2
		end
	end
end
