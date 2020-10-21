# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  # ============ #
  # CentOs nodes #
  # ============ #
  #Ansible-Node01
  config.vm.define "ansible-node01" do |cfg|
    cfg.vm.box = "centos/7"
    cfg.vm.provider "virtualbox" do |vb|
      vb.name = "Ansible-Node01(github_SysNet4Admin)"
      vb.customize ["modifyvm", :id, "--audio", "none"]
    end
    cfg.vm.host_name = "ansible-node01"
    cfg.vm.network "public_network", ip: "192.168.0.11", bridge: "en0: Wi-Fi (Wireless)"
    cfg.vm.network "forwarded_port", guest:22, host:60011, auto_correct:true, id:"ssh"
    cfg.vm.synced_folder "./data", "/vagrant", disalbed:true
    cfg.vm.provision "shell", path: "bash_ssh_conf_4_CentOS.sh"
  end
  #Ansible-Node02
  config.vm.define "ansible-node02" do |cfg|
    cfg.vm.box = "centos/7"
    cfg.vm.provider "virtualbox" do |vb|
      vb.name = "Ansible-Node02(github_SysNet4Admin)"
      vb.customize ["modifyvm", :id, "--audio", "none"]
    end
    cfg.vm.host_name = "ansible-node01"
    cfg.vm.network "public_network", ip: "192.168.0.12", bridge: "en0: Wi-Fi (Wireless)"
    cfg.vm.network "forwarded_port", guest:22, host:60012, auto_correct:true, id:"ssh"
    cfg.vm.synced_folder "./data", "/vagrant", disalbed:true
    cfg.vm.provision "shell", path: "bash_ssh_conf_4_CentOS.sh"
    #shell 의 path는 원격지로 파일 옮기지 않고 서버의 파일을 실행 시킬 수 있음
  end
  #Ansible-Node03
  config.vm.define "ansible-node03" do |cfg|
    cfg.vm.box = "centos/7"
    cfg.vm.provider "virtualbox" do |vb|
      vb.name = "Ansible-Node03(github_SysNet4Admin)"
      vb.customize ["modifyvm", :id, "--audio", "none"]
    end
    cfg.vm.host_name = "ansible-node03"
    cfg.vm.network "public_network", ip: "192.168.0.13", bridge: "en0: Wi-Fi (Wireless)"
    cfg.vm.network "forwarded_port", guest:22, host:60013, auto_correct:true, id:"ssh"
    cfg.vm.synced_folder "./data", "/vagrant", disalbed:true
    cfg.vm.provision "shell", path: "bash_ssh_conf_4_CentOS.sh"
  end

  # ============== #
  # Ubuntu nodes #
  # ============== #

  #Ansible-Node04
  config.vm.define "ansible-node04" do |cfg|
    cfg.vm.box = "ubuntu/trusty64"
    cfg.vm.provider "virtualbox" do |vb|
      vb.name = "Ansible-Node04(github_SysNet4Admin)"
      vb.customize ["modifyvm", :id, "--audio", "none"]
    end
    cfg.vm.host_name = "ansible-node04"
    cfg.vm.network "public_network", ip: "192.168.0.14", bridge: "en0: Wi-Fi (Wireless)"
    cfg.vm.network "forwarded_port", guest:22, host:60014, auto_correct:true, id:"ssh"
    cfg.vm.synced_folder "./data", "/vagrant", disalbed:true
  end

  #Ansible-Node05
  config.vm.define "ansible-node05" do |cfg|
    cfg.vm.box = "ubuntu/trusty64"
    cfg.vm.provider "virtualbox" do |vb|
      vb.name = "Ansible-Node05(github_SysNet4Admin)"
      vb.customize ["modifyvm", :id, "--audio", "none"]
    end
    cfg.vm.host_name = "ansible-node05"
    cfg.vm.network "public_network", ip: "192.168.0.15", bridge: "en0: Wi-Fi (Wireless)"
    cfg.vm.network "forwarded_port", guest:22, host:60015, auto_correct:true, id:"ssh"
    cfg.vm.synced_folder "./data", "/vagrant", disalbed:true
  end

  #Ansible-Node06
  config.vm.define "ansible-node06" do |cfg|
    cfg.vm.box = "ubuntu/trusty64"
    cfg.vm.provider "virtualbox" do |vb|
      vb.name = "Ansible-Node06(github_SysNet4Admin)"
      vb.customize ["modifyvm", :id, "--audio", "none"]
    end
    cfg.vm.host_name = "ansible-node06"
    cfg.vm.network "public_network", ip: "192.168.0.16", bridge: "en0: Wi-Fi (Wireless)"
    cfg.vm.network "forwarded_port", guest:22, host:60016, auto_correct:true, id:"ssh"
    cfg.vm.synced_folder "./data", "/vagrant", disalbed:true
  end

  # ============== #
  # Windows node #
  # ============== #

   #Ansible-Node07
   config.vm.define "ansible-node07" do |cfg|
    cfg.vm.box = "sysnet4admin/windows2016"
    cfg.vm.provider "virtualbox" do |vb|
      vb.name = "Ansible-Node07(github_SysNet4Admin)"
      vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
      vb.customize ["modifyvm", :id, "--audio", "none"]
      vb.gui = false
    end
      cfg.vm.host_name = "ansible-node07"
      cfg.vm.network "public_network", ip: "192.168.0.17", bridge: "en0: Wi-Fi (Wireless)"
      cfg.vm.network "forwarded_port", guest:22, host:60017, auto_correct:true, id:"ssh"
      cfg.vm.synced_folder "./data", "/vagrant", disalbed:true
      cfg.vm.provision "shell", inline: "netsh advfirewall set allprofiles state off"
    end

  # ============== #
  # Ansible Server #
  # ============== #

  config.vm.define "ansible-server" do |cfg|
    cfg.vm.box = "centos/7"
    cfg.vm.provider "virtualbox" do |vb|
      vb.name = "Ansible-Server(github_SysNet4Admin)"
      vb.customize ["modifyvm", :id, "--audio", "none"]
    end
    cfg.vm.host_name="ansible-server"
    cfg.vm.network "public_network", ip:"192.168.0.10", bridge: "en0: Wi-Fi (Wireless)"
    cfg.vm.network "forwarded_port", guest:22, host:60010, auto_correct: true, id:"ssh"
    cfg.vm.synced_folder "./data", "/vagrant", disalbed:true
    cfg.vm.provision "shell", inline: "sudo yum install epel-release -y"
    cfg.vm.provision "shell", inline: "sudo yum repolist -y"
    cfg.vm.provision "shell", inline: "yum install ansible -y"
    cfg.vm.provision "file", source: "ansible_env_ready.yml", destination: "ansible_env_ready.yml"
    cfg.vm.provision "file", source: "nginx_install.yml", destination: "nginx_install.yml"
    cfg.vm.provision "file", source: "nginx_remove.yml", destination: "nginx_remove.yml"
    cfg.vm.provision "file", source: "nfs.yml", destination: "nfs.yml"
    cfg.vm.provision "file", source: "timezone.yml", destination: "timezone.yml"
    
    cfg.vm.provision "shell", inline: "ansible-playbook ansible_env_ready.yml"
    cfg.vm.provision "shell", path: "add_ssh_auth.sh", privileged: false
  end
end
