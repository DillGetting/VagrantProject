# -*- mode: ruby -*-
# vi: set ft=ruby :
# could be uses for the final vagfile. 
$provisionScript = <<-SCRIPT
sed -i 's#PasswordAuthentication no#PasswordAuthentication yes#g' /etc/ssh/sshd_config
systemctl restart sshd
SCRIPT

Vagrant.configure("2") do |config|
  config.vbguest.auto_update = false
  config.vm.provision "shell",
    inline: $provisionScript

  config.vm.define "centos1" do |centos1|
    centos1.vm.box = "centos/7"
    centos1.vm.network "private_network", ip: "192.168.33.10"
    centos1.vm.hostname = "centos1"
    centos1.vm.box_version = "1804.02"
  end

  config.vm.define "centos2" do |centos2|
    centos2.vm.box = "centos/7"
    centos2.vm.network "private_network", ip: "192.168.33.11"
    centos2.vm.hostname = "centos2"
    centos2.vm.box_version = "1804.02"
  end

  config.vm.define "gitsvr" do |gitsvr|
    gitsvr.vm.box = "centos/7"
    gitsvr.vm.network "private_network", ip: "192.168.33.12"
    gitsvr.vm.hostname = "gitsvr"
    gitsvr.vm.box_version = "1804.02"
  end

end