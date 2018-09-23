

[Resource Quotas](https://kubernetes.io/docs/tasks/administer-cluster/manage-resources/quota-memory-cpu-namespace/)

Deploy default resources quotas for your namespace
```bash
kubectl create -f quotas.yaml
```

Verify qoutas
```bash
kubectl get resourcequota mem-cpu-rq--output=yaml
```

Deploy pods with specific limits and requests
```bash
kubectl create -f pod-quotas.yaml
```

Deploy pods with only limits
```bash
kubectl create -f pod-only-limit.yaml
```

Deploy pods with only requests
```bash
kubectl create -f pod-only-request.yaml
```

Deploy pod with neither and see defaults applied from the namespace
```bash
kubectl create -f pod-no-quotas.yaml
```
