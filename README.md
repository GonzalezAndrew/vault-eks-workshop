# vault-eks-workshop
Vault EKS Workshop


```
# terraform deploy
terraform init
terraform plan
terraform apply

# update your kube config file
aws eks --region <region> update-kubeconfig --name eks-learning-module

# check to see if you can see vault pods
kubectl get pods -A

# we need to init and then unseal vault
kubectl exec -it vault-0 -n vault -- vault operator init

kubectl exec -it vault-0 -n vault -- vault operator unseal <key 1>
kubectl exec -it vault-0 -n vault -- vault operator unseal <key 2>
kubectl exec -it vault-0 -n vault -- vault operator unseal <key 3>

#  verify vault server is running
kubectl get pods -n vault | grep vault

# to access web console, port foward and visit http://localhost:8200/ui
# docs on vault ui https://developer.hashicorp.com/vault/tutorials/kubernetes/kubernetes-raft-deployment-guide?in=vault%2Fkubernetes#vault-ui
kubectl port-forward service/vault-active 8200:8200 --namespace=vault
```
