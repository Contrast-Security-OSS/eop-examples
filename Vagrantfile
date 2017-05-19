VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.define "eop-ubuntu1404" do |vagrant1|
        vagrant1.vm.provider "virtualbox" do |v|
          v.memory = 4096
        end
        vagrant1.vm.box = "ubuntu/trusty64"
        vagrant1.vm.hostname = "eop-ubuntu1404.local"
        vagrant1.vm.network "forwarded_port", guest: 8080, host: 8091
        vagrant1.vm.network "forwarded_port", guest: 80, host: 8096
        vagrant1.vm.network "private_network", ip: "10.1.1.11"
        vagrant1.vm.provision "ansible" do |ansible1|
            ansible1.verbose = 'v'
            ansible1.playbook = "site.yml"
            ansible1.inventory_path = 'inventories/vagrant-inventory'
        end
    end
    config.vm.define "eop-ubuntu1604" do |vagrant2|
        vagrant2.vm.provider "virtualbox" do |v|
          v.memory = 4096
        end
        vagrant2.vm.box = "ubuntu/xenial64"
        vagrant2.vm.hostname = "eop-ubuntu1604.local"
        vagrant2.vm.network "forwarded_port", guest: 8080, host: 8092
        vagrant2.vm.network "private_network", ip: "10.1.1.21"
        vagrant2.vm.provision "ansible" do |ansible2|
            ansible2.verbose = 'v'
            ansible2.playbook = "site.yml"
            ansible2.inventory_path = 'inventories/vagrant-inventory'
        end
    end
    config.vm.define "eop-centos7" do |vagrant3|
        vagrant3.vm.provider "virtualbox" do |v|
          v.memory = 4096
        end
        vagrant3.vm.box = "centos/7"
        vagrant3.vm.hostname = "eop-centos7.local"
        vagrant3.vm.network "forwarded_port", guest: 8080, host: 8093
        vagrant3.vm.network "private_network", ip: "10.1.1.31"
        vagrant3.vm.provision "ansible" do |ansible3|
            ansible3.verbose = 'v'
            ansible3.playbook = "site.yml"
            ansible3.inventory_path = 'inventories/vagrant-inventory'
        end
    end
    config.vm.define "eop-centos6" do |vagrant4|
        vagrant4.vm.provider "virtualbox" do |v|
          v.memory = 4096
        end
        vagrant4.vm.box = "centos/6"
        vagrant4.vm.hostname = "eop-centos6.local"
        vagrant4.vm.network "forwarded_port", guest: 8080, host: 8094
        vagrant4.vm.network "private_network", ip: "10.1.1.41"
        vagrant4.vm.provision "ansible" do |ansible4|
            ansible4.verbose = 'v'
            ansible4.playbook = "site.yml"
            ansible4.inventory_path = 'inventories/vagrant-inventory'
        end
    end
    config.vm.define "eop-webgoat-standalone" do |vagrant5|
        vagrant5.vm.provider "virtualbox" do |v|
          v.memory = 4096
        end
        vagrant5.vm.box = "ubuntu/trusty64"
        vagrant5.vm.hostname = "eop-webgoat-standalone.local"
        vagrant5.vm.network "forwarded_port", guest: 8080, host: 8095
        vagrant5.vm.network "private_network", ip: "10.1.1.51"
        vagrant5.vm.provision "ansible" do |ansible5|
             ansible5.verbose = 'v'
             ansible5.playbook = "site.yml"
             ansible5.inventory_path = 'inventories/vagrant-inventory'
        end
    end
end
