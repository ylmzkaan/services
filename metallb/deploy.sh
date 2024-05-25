helm repo add metallb https://metallb.github.io/metallb
helm install metallb metallb/metallb
kubectl apply -f address-pool.yaml