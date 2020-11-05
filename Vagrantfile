# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

    # ============ #
    # CentOs nodes #
    # ============ #

    #Ansible-Node101
    config.vm.define "ansible-node101" do |cfg|
      cfg.vm.box = "centos/7"
      cfg.vm.provider "virtualbox" do |vb|
        vb.name = "Ansible-Node101(github_SysNet4Admin)"
        vb.customize ["modifyvm", :id, "--audio", "none"]
      end
      cfg.vm.host_name = "ansible-node101"
      cfg.vm.network "public_network", ip: "192.168.0.101", bridge: "en0: Wi-Fi (Wireless)"
      cfg.vm.network "forwarded_port", guest:22, host:60101, auto_correct:true, id:"ssh"
      cfg.vm.synced_folder "./data", "/vagrant", disabled:true
      cfg.vm.provision "shell", path: "bash_ssh_conf_4_CentOS.sh"
    end
    #Ansible-Node102
    config.vm.define "ansible-node102" do |cfg|
      cfg.vm.box = "centos/7"
      cfg.vm.provider "virtualbox" do |vb|
        vb.name = "Ansible-Node102(github_SysNet4Admin)"
        vb.customize ["modifyvm", :id, "--audio", "none"]
      end
      cfg.vm.host_name = "ansible-node102"
      cfg.vm.network "public_network", ip: "192.168.0.102", bridge: "en0: Wi-Fi (Wireless)"
      cfg.vm.network "forwarded_port", guest:22, host:60102, auto_correct:true, id:"ssh"
      cfg.vm.synced_folder "./data", "/vagrant", disabled:true
      cfg.vm.provision "shell", path: "bash_ssh_conf_4_CentOS.sh"
      #shell 의 path는 원격지로 파일 옮기지 않고 서버의 파일을 실행 시킬 수 있음
    end
    #Ansible-Node103
    config.vm.define "ansible-node103" do |cfg|
      cfg.vm.box = "centos/7"
      cfg.vm.provider "virtualbox" do |vb|
        vb.name = "Ansible-Node103(github_SysNet4Admin)"
        vb.customize ["modifyvm", :id, "--audio", "none"]
      end
      cfg.vm.host_name = "ansible-node103"
      cfg.vm.network "public_network", ip: "192.168.0.103", bridge: "en0: Wi-Fi (Wireless)"
      cfg.vm.network "forwarded_port", guest:22, host:60103, auto_correct:true, id:"ssh"
      cfg.vm.synced_folder "./data", "/vagrant", disabled:true
      cfg.vm.provision "shell", path: "bash_ssh_conf_4_CentOS.sh"
    end
    #Ansible-Node104
    config.vm.define "ansible-node104" do |cfg|
        cfg.vm.box = "centos/7"
        cfg.vm.provider "virtualbox" do |vb|
          vb.name = "Ansible-Node104(github_SysNet4Admin)"
          vb.customize ["modifyvm", :id, "--audio", "none"]
        end
        cfg.vm.host_name = "ansible-node104"
        cfg.vm.network "public_network", ip: "192.168.0.104", bridge: "en0: Wi-Fi (Wireless)"
        cfg.vm.network "forwarded_port", guest:22, host:60104, auto_correct:true, id:"ssh"
        cfg.vm.synced_folder "./data", "/vagrant", disabled:true
        cfg.vm.provision "shell", path: "bash_ssh_conf_4_CentOS.sh"
      end
  
      #Ansible-Node105
    config.vm.define "ansible-node105" do |cfg|
        cfg.vm.box = "centos/7"
        cfg.vm.provider "virtualbox" do |vb|
          vb.name = "Ansible-Node105(github_SysNet4Admin)"
          vb.customize ["modifyvm", :id, "--audio", "none"]
        end
        cfg.vm.host_name = "ansible-node105"
        cfg.vm.network "public_network", ip: "192.168.0.105", bridge: "en0: Wi-Fi (Wireless)"
        cfg.vm.network "forwarded_port", guest:22, host:60105, auto_correct:true, id:"ssh"
        cfg.vm.synced_folder "./data", "/vagrant", disabled:true
        cfg.vm.provision "shell", path: "bash_ssh_conf_4_CentOS.sh"
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
      cfg.vm.synced_folder "./data", "/vagrant", disabled:true
      cfg.vm.provision "shell", inline: "sudo yum install epel-release -y"
      cfg.vm.provision "shell", inline: "yum install ansible -y"
      cfg.vm.provision "file", source: "ansible_env_ready.yml", destination: "ansible_env_ready.yml"
      cfg.vm.provision "file", source: "tomcat_setting.yml", destination: "tomcat_setting.yml"
      cfg.vm.provision "shell", inline: "ansible-playbook ansible_env_ready.yml"
    end
  end
  