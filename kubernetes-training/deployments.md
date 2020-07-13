#### Single Pods vs ReplicaSets, Deployments, and Jobs

Problema: un pod que no esta asociado a un replicaSet/Deployment no sera regenerado si el pod termina inesperadamente o si falla el node donde corre.

Ejemplos de objetos de kubernetes que resuelven este problema y manejan uno o mas pods:

#### Controllers

- Deployment
- DaemonSet
- StatefulSet

#### Deployment

- Describe un estado deseado (pods, containers), cant de replicas.
- El Deployment controller se encarga de modificar el estado actual para alcanzar el estado deseado.
- Permite crear un conjunto de pods iguales (replicas).
- Crea y destruye Pods dinamicamente.
- Deployment de nueva revision.
- Rollback entre las revisiones creadas.
- Escalar/Reducir cantidad de replicas.

Crear deployment

`kubectl create -f deployment.yaml`{{execute}}

Listar deployments
`kubectl get deploy`{{execute}}

Actualizar imagen usada en un deployment

`kubectl set image deployment/test-deployment nginx-container=nginx:1.19`

Describe deployment

`kubectl describe deploy test-deployment`

Rollback a version anterior

`kubectl rollout undo deploy test-deployment --to-revision=1`{{execute}}

Chequear cambio en replicaSet

`kubectl get rs`{{execute}}

Controlar cantidad de replicas

`kubectl scale deploy --replicas=5 test-deployment`{{execute}}

#### Otros tipos de controllers

DaemonSet

Asegura que todos (o algunos nodos) tengan una copia del pod. Tiene en cuenta si agregamos o eliminamos nodos.

Usos de daemonSets

- Cluster storage daemon
- Logs collection daemon
- Node monitoring daemon

StatefulSets: Usados para manejar aplicaciones stateful.

Caracteristicas

- Identificadores unicos de red.
- Almacenamiento persistente.
- Deployment y scaling ordenado/graceful.
- Terminación ordenado/graceful.
