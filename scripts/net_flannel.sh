#!/bin/bash
kubeadm init --pod-network-cidr=10.244.0.0/16 > /root/kube-configuration/kube-init.log
cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f /root/kube-configuration/networks/kube-flannel.yml
kubectl create -f /root/kube-configuration/networks/kubernetes-dashboard.yaml