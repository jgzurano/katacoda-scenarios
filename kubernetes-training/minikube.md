# Minikube: Single node local cluster

Crear un cluster local de kubernetes single node usando minikube

En este escenario partimos de una version reciente de minikube pre-instalada por Katacoda.
> Luego del curso, si queres probar instalar minikube localmente seguí estas [instrucciones](https://kubernetes.io/docs/tasks/tools/install-minikube/)

## Uso de minikube

#### vm-drivers disponibles para cada OS

KVM2 - Recommended Linux driver
hyperkit - Recommended macOS driver
virtualbox - Recommended Windows driver
none - bare-metal execution on Linux, at the expense of system security and reliability

### Iniciar minikube

`minikube start --driver none`{{execute}}

#### Especificar version de kubernetes

`minikube start --kubernetes-version=1.16.8`{{execute}}

#### Status

`minikube status`{{execute}}

#### Update

`minikube update-check`{{execute}}

#### Teardown cluster

`minikube delete`{{execute}}

## Interactuar con el cluster usando kubectl

En este escenario partimos de una version pre-instalada de kubectl.
> Instrucciones de [instalación de kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

### Uso de kubectl y contextos

`kubectl config get-contexts`{{execute}}

`kubectl config current-context`{{execute}}

`kubectl config use-context`{{execute}}

`kubectl version --short`{{execute}}

## Alternativa a minikube

[Kind](https://kind.sigs.k8s.io/)
