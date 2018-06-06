These are the scripts and networking configuration for Kubernetes cluster configuration.
As default, root user is enabled for kubectl and kubeadm CLI.


To check if your kubernetes is running:
    kubectl get pods --all-namespaces

To reconfigure your kubernetes
    kubeadm reset
    $HOME/kube-configuration/scripts/net_weave.sh (Or any other networking support)

To enable none root user for kubectl CLI:
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    
To add other cluster to this master, please refer to log file: $HOME/kube-configuration/kube-init.log

For Kubernetes support networking, please refer to: https://kubernetes.io/docs/concepts/cluster-administration/networking/
