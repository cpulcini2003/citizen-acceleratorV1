kubectl create ns DB-NAMESPACE

kubectl create secret docker-registry regsecret --docker-server=https://registry.tanzu.vmware.com/ --docker-username=cpulcini@vmware.com --docker-password=Vmware_001 --namespace=DB-NAMESPACE

kubectl apply -f config/postgres.yaml

kubectl get pod -n DB-NAMESPACE

kubectl get pvc -n DB-NAMESPACE

kubectl exec -it DBNAME-name-0 -n DB-NAMESPACE -- psql