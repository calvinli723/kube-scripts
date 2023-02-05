sudo kubeadm reset

if [ -f /etc/cni/net.d ]; then
    sudo rm -rf /etc/cni/net.d
fi

sudo iptables -F && sudo iptables -t nat -F && sudo iptables -t mangle -F && sudo iptables -X
sudo swapon -a
