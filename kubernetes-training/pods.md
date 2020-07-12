#### Kubernetes REST APIs

- Todo en la plataforma Kubernetes se maneja como objetos de una API y tienen su correspondiente entrada en la API.
- Todas las operaciones y comunicaciones entre componentes son REST API calls manejadas por el API server.

#### POD

- Unidad mínima de ejecución de una aplicación que podemos crear.
- Encapsula uno o más containers.
  - Pods que usan un solo container.
  - Multiples containers acoplados que comparten recursos. (Co-located en el mismo nodo).
- Tiene su propia IP address y storage.
- Comunicación interna entre containers usando "localhost".
- Entidades efimeras.
- Container runtime interfaces: Docker,Containerd, CRI-O, otros.

##### Especificación

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: mypod
  labels:
    name: nginx
spec:
  containers:
  - name: nginx
    image: nginx
    ports:
    - containerPort: 80
```

##### Campos necesarios

- apiVersion - Que version de la Kubernetes API usamos para crear este objeto.
- kind - Tipo de objeto que creamos.
- metadata - Datos que ayudan a identificar el objeto, nombre, UID, namespace.
- spec - Estado deseado para el objeto: container image, ports, volumes, configs, variables de entorno.

Crear pod usando yaml file

`kubectl create -f pod.yaml`{{execute}}

Crear pod (comando single line)

`kubectl run mypod --generator=run-pod/v1 --image nginx`{{execute}}

kubectl get pods -n default

#### POD Logs

`kubectl logs mypod`{{execute}}
