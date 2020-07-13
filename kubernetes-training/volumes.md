#### Volumes

Resuelven el problema de persistencia en pods (ephemeral storage).
Compartir archivos entre containers de un pod.
Mismo ciclo de vida del pod.

Algunos tipos de volumes

- emptyDir: asignados por defecto con la creación de un POD.
- hostPath: monta un volumen del nodo en el pod.
- awsElasticBlockStore: Amazon Web Services (AWS) EBS Volume
- azureDisk: Microsoft Azure Data Disk
- configMap
- secret
- FlexVolume

Ejemplo aws EBS

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: test-pod-ebs
spec:
  containers:
    - image: k8s.gcr.io/test-webserver
      name: test-container
      volumeMounts:
        - mountPath: /test-ebs
          name: test-volume
  volumes:
  - name: test-volume
      # This AWS EBS volume must already exist.
      awsElasticBlockStore:
      volumeID: <volume-id>
      fsType: ext4
```
