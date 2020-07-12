#### Concepto, namespaces predefinidos y default

- Permiten separar recursos dentro de un cluster.
- Permiten limitar recursos dentro del namespace.
- Proveen un scope para nombres de recursos.

- Namespaces predefinidos

  - default: namespace default para objetos que no definen su namespace.
  - kube-system: namespace para objetos creados por Kubernetes system
  - kube-public: namespace publico (de lectura para todos los usuarios).

#### Namespaced / Non Namespaced

- Namespaced objects: pods, services, replication controllers, etc.
- Non namespaced objects: nodes, namespaces, persistenvolumes, clusterroles, etc

#### Obtener recursos Namespaced

`kubectl api-resources --namespaced=true`{{execute}}

#### Obtener recursos Non Namespaced

`kubectl api-resources --namespaced=false`{{execute}}

#### Operaciones

Crear

`kubectl create ns <ns_name>`{{execute}}

Listar

`kubectl get ns`{{execute}}

Borrar

`kubectl del ns <ns_name>`{{execute}}
