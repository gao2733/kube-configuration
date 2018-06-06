These are the scripts and networking configuration for Kubernetes cluster configuration.
As default, root user is enabled for kubectl and kubeadm CLI.


To check if your kubernetes is running:
    kubectl get pods --all-namespaces
To reconfigure your kubernetes
    kubeadm reset
    /root/kube-configuration/scripts/net_weave.sh (Or any other networking support)
To enable none root user for kubectl CLI:
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    
For Kubernetes support networking, please refer to: https://kubernetes.io/docs/concepts/cluster-administration/networking/
