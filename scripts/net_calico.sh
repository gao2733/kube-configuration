#!/bin/bash
kubeadm init --pod-network-cidr=192.168.0.0/16 > $HOME/kube-configuration/kube-init.log
chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f $HOME/kube-configuration/networks/rbac-kdd.yaml
kubectl apply -f $HOME/kube-configuration/networks/calico.yaml
kubectl create -f $HOME/kube-configuration/networks/kubernetes-dashboard.yaml