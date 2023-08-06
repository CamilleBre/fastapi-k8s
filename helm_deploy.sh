helm lint ./helm

kubectl create namespace helm

helm install  helm-chart ./helm --values=./helm/values.yaml