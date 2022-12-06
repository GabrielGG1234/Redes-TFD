Vagrant.configure("2") do |config|
  config.vm.provision "shell", path: "provisions/docker.sh"
  config.vm.define "controle" do |controle|
  controle.vm.box = "ubuntu/bionic64"
  controle.vm.hostname = "controle"
  controle.vm.provision "shell", path: "provisions/ansible.sh"
  controle.vm.network "private_network", ip: "192.168.1.2"
  end
  config.vm.define "banco" do |banco|
  banco.vm.box = "ubuntu/bionic64"
  banco.vm.hostname = "banco"
  banco.vm.provision "shell", path: "provisions/workers.sh"
  banco.vm.network "private_network", ip: "192.168.1.3"
  end
  config.vm.define "app" do |app|
  app.vm.box = "ubuntu/bionic64"
  app.vm.hostname = "app"
  app.vm.provision "shell", path: "provisions/workers.sh"
  app.vm.network "private_network", ip: "192.168.1.4"
  end
  end