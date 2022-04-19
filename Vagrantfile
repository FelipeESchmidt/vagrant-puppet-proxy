$ip = "192.168.60.58"

$message = <<MSG
------------------------------------------------------

Server up in, #{$ip}
Accessible in http://#{$ip}

------------------------------------------------------
MSG

Vagrant.configure("2") do |config|

  config.vm.define "server" do |server|
    server.vm.box = "ubuntu/bionic64"
    server.vm.network "private_network", ip: $ip

    server.vm.provider "virtualbox" do |virtualboxMachine|
      virtualboxMachine.name = "serverProxy"
    end
  end

  config.vm.provision :"shell", path: "installpuppet.sh"
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path    = "modules"
    puppet.options = ['--verbose']
  end

  config.vm.post_up_message = $message

end
