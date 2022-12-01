#!/bin/bash
# RUN ONLY ON CONTROL PLANE

# install Calico networking
#kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/master/manifests/calico.yaml
