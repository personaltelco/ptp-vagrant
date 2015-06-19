# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"

  config.vm.hostname = "ptpdev"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.network "public_network"

  config.vm.provision "shell", inline: "/vagrant/provision/system.sh"
  config.vm.provision "shell", inline: "su -c /vagrant/provision/user.sh vagrant"

  config.vm.synced_folder "work", "/home/vagrant", create: true

  config.ssh.forward_agent = true
end
