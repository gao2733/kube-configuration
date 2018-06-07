#!/bin/bash
kubeadm init --pod-network-cidr=10.244.0.0/16 > $HOME/kube-configuration/kube-init.log
cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f $HOME/kube-configuration/networks/romana-kubeadm.yml
kubectl create -f $HOME/kube-configuration/networks/kubernets-dashboard.yaml