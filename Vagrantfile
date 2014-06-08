# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos65_mroonga"

  # If one wants to build yourself vagrant box with packer,
  # please replace url as follows:
  # config.vm.box_url = "./builds/CentOS-6.5-x86_64-with-mroonga.box"
  # And then, execute following command:
  # `% packer build -only=virtualbox-iso template.json`
  config.vm.box_url = "https://github.com/cosmo0920/packer-centos65-with-mroonga/releases/download/v0.1.0/CentOS-6.5-x86_64-with-mroonga.box"

  # config.vm.box_check_update = true

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.network "private_network", ip: "192.168.33.110"

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end
end
