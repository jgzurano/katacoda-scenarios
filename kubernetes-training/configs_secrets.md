#### ConfigMaps

- Usado para almacenar información no confidencial en pares key/value.
- Pueden ser consumidas por Pods como:
  - Variables de entorno.
  - Argumentos de linea de comandos.
  - Archivos montados como un volumen.
- Desacoplan la configuracion de la aplicación.
- No proveen encriptación.

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: test-configmap
data:
  database: mongodb
  database_uri: mongodb://localhost:27017
```

Crear desde un archivo

`kubectl create configmap <configmap-name> --from-file=<file-source>`

Crear usando template

`kubectl create -f configmap.yaml`{{execute}}

Obtener configmaps

`kubectl get configmaps`{{execute}}
`kubectl get cm`{{execute}}

Usar configmap en un pod como variables de entorno

`kubectl create -f pod-configmap.yaml`{{execute}}

#### Secrets

- Usado para almacenar información sensible.
- Pueden ser consumidas por Pods como:
  - Variables de entorno.
  - Archivos montados como un volumen.
  - Secretos para descargar images (kubelet).
- Desacoplan la configuracion de la aplicación.
- Soportan encryption at rest.
- Tipos de secrets: generic, docker-registry, tls.

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: test-pod-secret
type: Opaque
data:
  username: YWRtaW4=
  password: MWYyZDFlMmU2N2Rm
```

Crear desde un archivo

`kubectl create configmap <configmap-name> --from-file=<file-source>`

Crear usando template

`kubectl create -f configmap.yaml`{{execute}}

Obtener configmaps

`kubectl get configmaps`{{execute}}
`kubectl get cm`{{execute}}

Usar secret en un pod como un volumen

`kubectl create -f pod-secret.yaml`{{execute}}
