

Vagrant.configure("2") do |config|
    
    config.vm.define "gcpgke" do |gcpgke|
        gcpgke.vm.box = "ubuntu/bionic64"
        gcpgke.vm.network "private_network", ip: "192.168.50.40"
        gcpgke.vm.hostname = "gcpgke"
        config.vm.synced_folder ".", "/share"
        gcpgke.vm.provider "virtualbox" do |vb|
            vb.customize ["modifyvm", :id, "--name", "gcpgke"]
        end
        
        gcpgke.vm.provision "shell" , inline: <<-SHELL
        echo 'export ANSIBLE_HOST_KEY_CHECKING=False' >> /home/vagrant/.bashrc
        echo '*** Install Terraform ***'
        sudo apt-get install wget -y
        sudo apt-get install unzip -y
        wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
        sudo unzip ./terraform_0.12.24_linux_amd64.zip -d /usr/local/bin/
        echo '*** Install gcp Client ***'
        
		SHELL
    end

end