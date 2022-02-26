sudo apt-get install -y \
	    ca-certificates \
	        curl \
		    gnupg \
		        lsb-release
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
	    | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
	  "deb [arch=$(dpkg --print-architecture) \
signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] \
https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install containerd.io
sudo mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml
sudo sed -i '/options/a \\t    SystemdCgroup = true' /etc/containerd/config.toml
sudo systemctl restart containerd

