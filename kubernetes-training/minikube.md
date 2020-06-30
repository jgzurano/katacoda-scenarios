Crear un cluster local de kubernetes single node usando minikube

En este escenario partimos de una version reciente de minikube pre-instalada por Katacoda.
> Luego del curso, si queres instalar minikube localmente: [instrucciones](https://kubernetes.io/es/docs/tasks/tools/install-minikube/)

Alternativa a minikube: 

[Kind](https://kind.sigs.k8s.io/)

Iniciar minikube localmente

`minikube start --driver none`{{execute}}

Mostrar status

`minikube status`{{execute}}

vm-drivers disponibles para cada OS

```KVM2 - Recommended Linux driver
hyperkit - Recommended macOS driver
virtualbox - Recommended Windows driver
none - bare-metal execution on Linux, at the expense of system security and reliability
```

Iniciar cluster especificando version de kubernetes

`minikube start --kubernetes-version=1.16.8`{{execute}}

Iniciar dashboard addon

`minikube addons enable dashboard`{{execute}}

Listar addons

`minikube addons list`{{execute}}

Actualizaciones disponibles

`minikube update-check`{{execute}}

Eliminar cluster

`minikube delete`{{execute}}
