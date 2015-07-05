Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.puppet_install.puppet_version = '3.8.1'
  config.vm.provision "shell", inline: <<-SHELL
    sudo puppet module install puppetlabs-apache
  SHELL
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "site.pp"
    puppet.module_path = "modules"
  end
end
