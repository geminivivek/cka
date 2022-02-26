sudo apt-get update
sudo apt-get install -y vim bash-completion jq wget curl tmux etcd-client
sudo sed -i.bak '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
sudo swapoff -a

