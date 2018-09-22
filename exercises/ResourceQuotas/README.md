

[Resource Quotas](https://kubernetes.io/docs/tasks/administer-cluster/manage-resources/quota-memory-cpu-namespace/)

```bash
kubectl create -f quotas.yaml 
```

Verify qoutas 
```bash
kubectl get resourcequota mem-cpu-rq--output=yaml
```


