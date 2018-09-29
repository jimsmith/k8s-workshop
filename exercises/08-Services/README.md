[Services]()

https://v1-10.docs.kubernetes.io/docs/tasks/run-application/run-single-instance-stateful-application/

### PersistentVolume
```bash
kubectl get services -o wide
```

Create the persistent and the claim
```bash
kubectl create -f mysql-pv.yaml
```

### Pod Deployment
Create a pod that will use it.

```bash
kubectl create -f mysql-pod.yaml

```

### Service
```bash
kubectl create -f mysql-service.yaml
```

```bash

kubectl get services -o wide

```

### Load Balancer


### External Load Balancer

### Clean up

```bash
kubectl delete -f mysql-pv.yaml

kubectl delete -f mysql-pod.yaml

kubectl create -f mysql-service.yaml
```
