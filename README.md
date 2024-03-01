# JMX Term docker image
This is a docker image for JXM Term, in order to debug connections to JMX servers running in a containerized environment.

## Kubernetes
In order to use this image in a Kubernetes environment, you can use the following:
```bash
kubectl apply -f https://raw.githubusercontent.com/p404/jmxterm-docker/main/pod.yaml
````

After that, you need to exec into the pod and run the following command:
```bash
kubectl exec -it pod/jmxterm-debug /bin/bash
```

Inside the pod, you can run the following command to connect to a JMX server:
```bash
jmxterm service:jmx:rmi:///jndi/rmi://<JMX_SERVER_IP>:<JMX_SERVER_PORT>/jmxrmi
```


