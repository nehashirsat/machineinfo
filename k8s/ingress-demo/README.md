helm repo lit
helm search repo nginx
helm install my-nginx stable/nginx-ingress --set rbac.create=true
kubectl expose deploy machineinfo-deploy-main --port 9000
kubectl expose deploy machineinfo-deploy-pink --port 9000
kubectl expose deploy machineinfo-deploy-blue --port 9000
