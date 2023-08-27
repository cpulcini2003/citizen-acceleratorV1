

echo "LOGIN"
helm registry login registry.tanzu.vmware.com --username=cpulcini@vmware.com --password=Vmware_001

kubectl create ns postgres-operator
kubectl create secret docker-registry regsecret --docker-server=https://registry.tanzu.vmware.com/ --docker-username=cpulcini@vmware.com --docker-password=Vmware_001 --namespace=postgres-operator

echo "CLEAN"
rm -rf /tmp/vmware-sql-postgres-operator

echo "PULL"
helm pull oci://registry.tanzu.vmware.com/tanzu-sql-postgres/vmware-sql-postgres-operator --version v2.2.0 --untar --untardir /tmp

echo "CHECK"
kubectl get crd postgres.sql.tanzu.vmware.com

echo "INSTALL"
helm install my-postgres-operator /tmp/vmware-sql-postgres-operator --namespace=postgres-operator --create-namespace --wait

echo "SA CHECK"
kubectl get serviceaccount -n postgres-operator

echo "sleep 30"
sleep 30

echo "CHECK RUN"
kubectl get all --selector app=postgres-operator -n postgres-operator

echo "CHECK API"
kubectl api-resources --api-group=sql.tanzu.vmware.com

echo "LIST"
helm list -n postgres-operator

echo "GET STORAGECLASS"
kubectl get storageclasses