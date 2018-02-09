Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-17.10"
    config.vm.provision :shell, :path => "scripts/setup.sh"
    config.vm.provision :shell, :path => "scripts/extend_keyboard.sh"
    config.vm.network :forwarded_port, host: 8080, guest: 8080
    config.vm.network :forwarded_port, host: 9000, guest: 9000
    config.ssh.insert_key = true
    config.vm.synced_folder '.', '/vagrant', disabled: false

    config.vm.provider :virtualbox do |vb|
        vb.gui = true
        vb.cpus = 4
        # Use VBoxManage to customize the VM. For example to change memory:
        vb.memory = 8192
        vb.customize ["modifyvm", :id, "--name", "jhipster-devbox-4.1.0"]
        vb.customize ["modifyvm", :id, "--vram", 128]
        vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
        vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
        vb.customize ['modifyvm', :id, '--draganddrop', 'bidirectional']
    end
end
