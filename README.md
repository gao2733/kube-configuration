# Overview
These are the scripts and networking configuration for Kubernetes cluster configuration.
As default, root user is enabled for kubectl and kubeadm CLI.


# To check if kubernetes is running
    kubectl get pods --all-namespaces

# Reconfigure your kubernetes
    kubeadm reset
    $HOME/kube-configuration/scripts/net_weave.sh (Or any other networking support)

# Enable none root user for kubectl CLI
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    
# Add other cluster to this master
   
   ## First need to provision kubernetes slave node without init
        To do so, during VM provision, set ":skip_repo_update=kube_slave" for slave system.
   ## Find kubernetes master token, and join the master
        Check the master /root/kube-configuration/kube-init.log, find the line with "kubeadm join"
        Run this CLI on your slave system.

# Kubernetes networking
    For Kubernetes support networking, please refer to: https://kubernetes.io/docs/concepts/cluster-administration/networking/
