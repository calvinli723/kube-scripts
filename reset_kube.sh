sudo kubeadm reset

sudo etcdctl rm --recursive registry
sudo rm -rf /var/lib/cni
sudo rm -rf /run/flannel
sudo rm -rf /etc/cni
sudo ifconfig cni0 down
sudo brctl delbr cni0
