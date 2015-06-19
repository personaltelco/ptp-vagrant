# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"

  config.vm.hostname = "ptpdev"

  config.vm.network "private_network", ip: "172.31.255.2"
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provision "shell", inline: "/vagrant/provision/system.sh"
  config.vm.provision "shell", inline: "su -c /vagrant/provision/user.sh vagrant"

  config.vm.synced_folder "work", "/home/vagrant", create: true

  config.ssh.forward_agent = true
end
