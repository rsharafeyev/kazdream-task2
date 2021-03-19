Vagrant.configure("2") do |config|

  config.vm.define "ns" do |ns|
    ns.vm.box = "hashicorp/bionic64"
    ns.vm.hostname = "server"
    ns.vm.network "private_network", ip: "192.168.33.11"
    #ns.vm.provision :shell, path: "install-nomad_consul.sh"
    #ns.vm.provision :shell, inline: "sudo cp /vagrant/nomad-service-server.service /etc/systemd/system/ns.service"
    #ns.vm.provision :shell, inline: "sudo systemctl enable ns.service && sudo systemctl start ns.service"
    #ns.vm.provision :shell, inline: "sudo cp /vagrant/consul-service-server.service /etc/systemd/system/cs.service"
    #ns.vm.provision :shell, inline: "sudo systemctl enable cs.service && sudo systemctl start cs.service"
    ns.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
      vb.name = "server"
    end
  end

  config.vm.define "nc1" do |nc1|
    nc1.vm.box = "hashicorp/bionic64"
    nc1.vm.hostname = "client1"
    nc1.vm.network "private_network", ip: "192.168.33.12"
    #nc1.vm.provision "docker"
    #nc1.vm.provision :shell, path: "install-nomad_consul.sh"
    #nc1.vm.provision :shell, inline: "sudo cp /vagrant/nomad-service-client1.service /etc/systemd/system/nc.service"
    #nc1.vm.provision :shell, inline: "sudo systemctl enable nc.service && sudo systemctl start nc.service"
    #nc1.vm.provision :shell, inline: "sudo cp /vagrant/consul-service-client1.service /etc/systemd/system/cc.service"
    #nc1.vm.provision :shell, inline: "sudo systemctl enable cc.service && sudo systemctl start cc.service"
    nc1.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
      vb.name = "client1"
    end
  end

  config.vm.define "nc2" do |nc2|
    nc2.vm.box = "hashicorp/bionic64"
    nc2.vm.hostname = "client2"
    nc2.vm.network "private_network", ip: "192.168.33.13"
    #nc2.vm.provision "docker"
    #nc2.vm.provision :shell, path: "install-nomad_consul.sh"
    #nc2.vm.provision :shell, inline: "sudo cp /vagrant/nomad-service-client2.service /etc/systemd/system/nc.service"
    #nc2.vm.provision :shell, inline: "sudo systemctl enable nc.service && sudo systemctl start nc.service"
    #nc2.vm.provision :shell, inline: "sudo cp /vagrant/consul-service-client2.service /etc/systemd/system/cc.service"
    #nc2.vm.provision :shell, inline: "sudo systemctl enable cc.service && sudo systemctl start cc.service"
    nc2.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
      vb.name = "client2"
    end
  end

end
