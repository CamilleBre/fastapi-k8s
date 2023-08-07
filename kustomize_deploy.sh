kubectl create namespace kustomize

kustomize build kustomize

kubectl apply -k kustomize