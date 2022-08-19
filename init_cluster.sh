#!/bin/bash
# RUN ONLY ON CONTROL PLANE NODE

# initialize k8s cluster on control plane node using kubeadm
sudo kubeadm init --pod-network-cidr 10.0.0.0/16 --kubernetes-version 1.24.0

# set kubectl access
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
