helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
kubectl create namespace prometheus
helm install prometheus prometheus-community/prometheus --version 25.20 --values custom-values.yaml -n prometheus
