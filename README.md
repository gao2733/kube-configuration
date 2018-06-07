These are the scripts and networking configuration for Kubernetes cluster configuration.
As default, root user is enabled for kubectl and kubeadm CLI.


To check if your kubernetes is running:
    kubectl get pods --all-namespaces

To reconfigure your kubernetes:
    kubeadm reset
    $HOME/kube-configuration/scripts/net_weave.sh (Or any other networking support)

To enable none root user for kubectl CLI:
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    
To add other cluster to this master, please refer to log file: $HOME/kube-configuration/kube-init.log

To provision other clusters to join this kubernetes cluster:
   During provision, set ":skip_repo_update=kube_slave" for slave system.
   After VM provision, check the master /root/kube-configuration/kube-init.log, find the line with "kubeadm join"
   Run this CLI on your slave system.

For Kubernetes support networking, please refer to: https://kubernetes.io/docs/concepts/cluster-administration/networking/
