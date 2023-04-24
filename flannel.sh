sudo snap install helm --classic

#install flannel (networking addons)
# Needs manual creation of namespace to avoid helm error
kubectl create ns kube-flannel
kubectl label --overwrite ns kube-flannel pod-security.kubernetes.io/enforce=privileged

#add flannel repo
helm repo add flannel https://flannel-io.github.io/flannel/
