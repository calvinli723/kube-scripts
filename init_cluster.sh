#!/bin/bash
# RUN ONLY ON CONTROL PLANE NODE

# initialize k8s cluster on control plane node using kubeadm
sudo kubeadm init --config kubeadm-config.yaml

# set kubectl access
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
