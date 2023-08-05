kubectl create namespace standard

kubectl apply -f secret.yml

kubectl apply -f fastapi-service.yml
kubectl apply -f mysql-service.yml
kubectl apply -f phpmyadmin-service.yml

kubectl apply -f pvc.yml

kubectl apply -f fastapi-deployment.yml
kubectl apply -f phpmyadmin-deployment.yml
kubectl apply -f mysql-statefulset.yml

kubectl apply -f hpa.yml

kubectl apply -f fastapi-ingress.yml