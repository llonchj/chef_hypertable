# -*- mode: ruby -*-
# vi: set ft=ruby :

box = "ubuntu"
box_url = "/Volumes/Wallaby/vagrant/boxes/ubuntu-13.04-server.box"
timezone = "Australia/Melbourne"

Vagrant.configure("2") do |config|
  config.vm.define :htm do |node|

    node.vm.hostname = "htm"
    node.vm.box = box
    node.vm.box_url = box_url
    node.vm.network :private_network, ip: "192.168.56.200"

    node.ssh.max_tries = 40
    node.ssh.timeout   = 120
    node.berkshelf.enabled = true

    node.vm.provision :chef_solo do |chef|
      chef.json = {
        :set_fqdn => node.vm.hostname,
      }
      chef.add_recipe "hypertable::admin"
      chef.add_recipe "hypertable::master"
      chef.add_recipe "hypertable::hyperspace"
      chef.log_level = :debug
    end
  end

  [1,2].each do |number|
    config.vm.define "ht#{number}" do |worker|

      worker.vm.hostname = "ht#{number}"
      worker.vm.box = box
      worker.vm.box_url = box_url
      worker.vm.network :private_network, ip: "192.168.56.20#{number}" #+ number.to_s()
      worker.ssh.max_tries = 40
      worker.ssh.timeout   = 120
      worker.berkshelf.enabled = true
      worker.vm.provision :chef_solo do |chef|
        chef.json = {
          :set_fqdn => worker.vm.hostname,
        }
        chef.add_recipe "hypertable::hyperspace"
        chef.add_recipe "hypertable::slave"
      end

    end
  end

  config.vm.define "th1" do |worker|

    worker.vm.hostname = "th1"
    worker.vm.box = box
    worker.vm.box_url = box_url
    worker.vm.network :private_network, ip: "192.168.56.210"
    worker.ssh.max_tries = 40
    worker.ssh.timeout   = 120
    worker.berkshelf.enabled = true
    worker.vm.provision :chef_solo do |chef|
      chef.json = {
        :set_fqdn => worker.vm.hostname,
      }
      chef.add_recipe "hypertable::thriftbroker"
    end

  end

end

