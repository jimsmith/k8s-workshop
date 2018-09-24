[Pods](https://kubernetes.io/docs/concepts/workloads/pods/pod/)

Pods are a collection of containers that share a namespace, are colocated and coschedule together on a Kubenetes nodes.



Start a pod from a manfist
```bash
kubectl apply -f single-pod-nginx.yaml
```

Verify the state of the pod
```bash
kubectl get pods
NAME  READY STATUS  RESTARTS  AGE
nginx 1/1   Running 0         44s
```
Get more details of the pod
```bash
kubectl describe pod nginx
```

Logs
```bash
kubectl logs nginx
```

Accessing your pod
```bash
kubectl portforward nginx 8080:80
```

Navigate to http://localhost:8080 in your web browser
