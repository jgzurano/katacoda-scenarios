En este escenario partimos de una version reciente de minikube pre-instalada por Katacoda.
> Luego del curso, si queres instalar minikube: [instrucciones](https://kubernetes.io/es/docs/tasks/tools/install-minikube/)

#### Minikube

- Permite crear clusters locales de kubernetes (single node) utilizando una virtual machine.
- Cross-platform (Linux, macOS, Windows).
- Multiple container runtimes (CRI-O, containerd, docker).
- Features: LoadBalancer, filesystem mounts, FeatureGates.
- NVIDIA GPU support - machine learning.
- Filesystem mounts.
- Addons.

Iniciar cluster

vm-drivers disponibles para cada OS

```KVM2 - Recommended Linux driver
hyperkit - Recommended macOS driver
virtualbox - Recommended Windows driver
none - bare-metal execution on Linux, at the expense of system security and reliability
```

`minikube start --driver <vm-driver>`{{execute}}

Mostrar status

`minikube status`{{execute}}

`minikube config view`{{execute}}

Iniciar cluster especificando version de kubernetes

`minikube start --kubernetes-version=1.16.8`{{execute}}

Iniciar un segundo cluster cluster (Nota: No funciona si estamos usando --driver none(bare-metal) como driver)

`minikube start -p cluster2`{{execute}}

Actualizaciones disponibles

`minikube update-check`{{execute}}

Eliminar cluster

`minikube delete`{{execute}}

Alternativas a minikube

[Kind](https://kind.sigs.k8s.io/)

- Cluster en docker sin usar una VM.
- Startup más rapido, menor uso de recursos que minikube.
- Multi-node clusters y HA.
- Pensado para testear el desarrollo propio de Kubernetes, se puede utilizar para pruebas locales o pipelines.

[k3d](https://k3d.io/)
