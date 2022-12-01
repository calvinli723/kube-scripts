# kube-scripts

Here are the scripts needed to build a Kubernetes cluster.
This currently is only tested for Kubernetes version 1.24.0

To build a Kubernetes cluster:

First run `install_kube.sh` on each machine you wish to run Kubernetes on

Then run `init_cluster` ONLY ON THE CONTROL PLANE NODE

Then run `install_networking.sh` ONLY ON THE CONTROL PLANE NODE

Then run `kubeadm token create --print-join-command` on the CONTROL PLANE NODE and copy the output of the command

Then run the generated `join` command on all of the worker nodes.

The cluster is now set up.
