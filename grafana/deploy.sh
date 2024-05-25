helm repo add grafana https://grafana.github.io/helm-charts
kubectl create namespace grafana
helm install grafana grafana/grafana --version 7.3 -n grafana
kubectl get secret --namespace grafana grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
