# vagrant-starcanada
Code supporting my presentation on "Creating Disposable Test Environments with Vagrant and Puppet" from Star Canada 2015.

All the code is in the master branch, but the steps along the way are tagged:
  * stock - Stock `Vagrantfile`
  * nocomments - Stock `Vagrantfile` with all the comments removed
  * puppet - runs a simple Puppet manifest that installs an Apache web server

You'll need the Vagrant Puppet plugin installed to use the Puppet examples:
```
   vagrant plugin install vagrant-puppet-install
```

You can access the web server at (http://192.168.33.10/) after you `vagrant up`.

   
