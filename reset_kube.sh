sudo kubeadm reset

etcdctl rm --recursive registry
rm -rf /var/lib/cni
rm -rf /run/flannel
rm -rf /etc/cni
ifconfig cni0 down
brctl delbr cni0
