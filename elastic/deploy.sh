helm repo add elastic https://helm.elastic.co
kubectl create namespace elastic
helm install elasticsearch elastic/elasticsearch -f values.yaml -n elastic
kubectl get secrets --namespace=elastic elasticsearch-master-credentials -ojsonpath='{.data.password}' | base64 -d
