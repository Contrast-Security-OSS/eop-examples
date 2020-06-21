VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.provider "virtualbox" do |vb|
          vb.memory = "4096"
          vb.cpus = "2"
    end

    config.vm.define "eop-ubuntu1804" do |vagrant1|
        vagrant1.vm.box = "ubuntu/bionic64"
        vagrant1.vm.hostname = "eop-ubuntu1804.local"
        vagrant1.vm.network "forwarded_port", guest: 8080, host: 8980
        vagrant1.vm.network "forwarded_port", guest: 443, host: 8143
        vagrant1.vm.network "private_network", ip: "10.1.1.11"
        vagrant1.vm.provision "ansible" do |ansible1|
            ansible1.verbose = 'v'
            ansible1.playbook = "site.yml"
            ansible1.inventory_path = 'inventories/vagrant-inventory'
        end
    end
    config.vm.define "eop-ubuntu1604" do |vagrant2|
        vagrant2.vm.box = "ubuntu/xenial64"
        vagrant2.disksize.size = '40GB'
        vagrant2.vm.hostname = "eop-ubuntu1604.local"
        vagrant2.vm.network "forwarded_port", guest: 8080, host: 8280
        vagrant2.vm.network "forwarded_port", guest: 443, host: 8243
        vagrant2.vm.network "private_network", ip: "10.1.1.21"
        vagrant2.vm.provision "ansible" do |ansible2|
            ansible2.verbose = 'v'
            ansible2.playbook = "site.yml"
            ansible2.inventory_path = 'inventories/vagrant-inventory'
        end
    end
    config.vm.define "eop-centos7a" do |vagrant3|
        vagrant3.vm.box = "centos/7"
        vagrant3.vm.hostname = "eop-centos7a.local"
        vagrant3.vm.network "forwarded_port", guest: 8080, host: 8380
        vagrant3.vm.network "forwarded_port", guest: 443, host: 8343
        vagrant3.vm.network "private_network", ip: "10.1.1.31"
        vagrant3.vm.provision "ansible" do |ansible3|
            ansible3.verbose = 'v'
            ansible3.playbook = "site.yml"
            ansible3.inventory_path = 'inventories/vagrant-inventory'
        end
    end
    config.vm.define "eop-centos7b" do |vagrant4|
        vagrant4.vm.box = "centos/7"
        vagrant4.vm.hostname = "eop-centos7b.local"
        vagrant4.vm.network "forwarded_port", guest: 8080, host: 8480
        vagrant4.vm.network "forwarded_port", guest: 443, host: 8443
        vagrant4.vm.network "private_network", ip: "10.1.1.41"
        vagrant4.vm.provision "ansible" do |ansible4|
            ansible4.verbose = 'v'
            ansible4.playbook = "site.yml"
            ansible4.inventory_path = 'inventories/vagrant-inventory'
        end
    end
    config.vm.define "eop-centos6" do |vagrant5|
        vagrant5.vm.box = "centos/6"
        vagrant5.vm.hostname = "eop-centos6.local"
        vagrant5.vm.network "forwarded_port", guest: 8080, host: 8580
        vagrant5.vm.network "forwarded_port", guest: 443, host: 8543
        vagrant5.vm.network "private_network", ip: "10.1.1.51"
        vagrant5.vm.provision "ansible" do |ansible5|
            ansible5.verbose = 'v'
            ansible5.playbook = "site.yml"
            ansible5.inventory_path = 'inventories/vagrant-inventory'
        end
    end
    config.vm.define "eop-webgoat-standalone" do |vagrant6|
        vagrant6.vm.box = "ubuntu/trusty64"
        vagrant6.vm.hostname = "eop-webgoat-standalone.local"
        vagrant6.vm.network "forwarded_port", guest: 8080, host: 8680
        vagrant6.vm.network "private_network", ip: "10.1.1.61"
        vagrant6.vm.provision "ansible" do |ansible6|
             ansible6.verbose = 'v'
             ansible6.playbook = "site.yml"
             ansible6.inventory_path = 'inventories/vagrant-inventory'
        end
    end
    config.vm.define "eop-jump" do |vagrant7|
        vagrant7.vm.box = "centos/7"
        vagrant7.vm.hostname = "eop-jump.local"
        vagrant7.vm.network "private_network", ip: "10.1.1.71"
        vagrant7.vm.provision "ansible" do |ansible7|
             ansible7.verbose = 'v'
             ansible7.playbook = "site.yml"
             ansible7.inventory_path = 'inventories/vagrant-inventory'
             ansible7.extra_vars = {
                run_install: "False"
            }
        end
    end
    config.vm.define "eop-db" do |vagrant8|
        vagrant8.vm.box = "ubuntu/trusty64"
        vagrant8.vm.hostname = "eop-db.local"
        vagrant8.vm.network "private_network", ip: "10.1.1.81"
        vagrant8.vm.provision "ansible" do |ansible8|
             ansible8.verbose = 'v'
             ansible8.playbook = "site.yml"
             ansible8.inventory_path = 'inventories/vagrant-inventory'
             ansible8.extra_vars = {
                run_install: "False"
            }
        end
    end
end
