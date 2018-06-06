#!/bin/bash
kubeadm init --pod-network-cidr=10.244.0.0/16
cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f /root/cf-kube/networks/romana-kubeadm.yml
kubectl create -f /root/cf-kube/networks/kubenets-dashboard.yaml