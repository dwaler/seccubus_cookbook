# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.omnibus.chef_version = :latest
  config.vm.hostname = "seccubus"
  config.vm.box = "opscode-centos-6.4"
  config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_centos-6.4_provisionerless.box"
  config.vm.network :private_network, ip: "33.33.33.33"
  config.berkshelf.enabled = true
  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :openvas => {
        :enable_nvt_updates_from_cron => 'yes',
        :gsad_port => '9392', 
        :enable_greenbone_scan_configs => 'yes',
        :nasl_no_signature_check => 'no'
      }
    }
    chef.run_list = [
        "recipe[seccubus_cookbook::repositories]",
        "recipe[openvas::nmap]",
        "recipe[openvas::server]",
    ]
  end
end
