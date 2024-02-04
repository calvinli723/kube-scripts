#!/bin/bash
# RUN ONLY ON CONTROL PLANE NODE

# initialize k8s cluster on control plane node using kubeadm
#sudo kubeadm init --config kubeadm-config.yaml
sudo kubeadm init --control-plane-endpoint "939lb:6443" --upload-certs --pod-network-cidr 10.0.1.0/24

# set kubectl access
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
