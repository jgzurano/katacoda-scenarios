
Crear un cluster local de kubernetes single node usando minikube

En este escenario partimos de una version reciente de minikube pre-instalada por Katacoda.
> Luego del curso, si queres probar instalar minikube localmente seguí estas [instrucciones](https://kubernetes.io/docs/tasks/tools/install-minikube/)

Iniciar minikube

`minikube start --driver none`{{execute}}

vm-drivers disponibles para cada OS

```KVM2 - Recommended Linux driver
hyperkit - Recommended macOS driver
virtualbox - Recommended Windows driver
none - bare-metal execution on Linux, at the expense of system security and reliability
```

Especificar version de kubernetes

`minikube start --kubernetes-version=1.16.8`{{execute}}

Mostrar status

`minikube status`{{execute}}

Actualizaciones disponibles

`minikube update-check`{{execute}}

Eliminar cluster

`minikube delete`{{execute}}

#### Alternativa a minikube

[Kind](https://kind.sigs.k8s.io/)
