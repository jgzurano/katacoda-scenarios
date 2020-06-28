# Minikube: Single node local cluster

## Crear un cluster local de kubernetes single node usando minikube

En este escenario partimos de una version reciente de minikube pre-instalada por Katacoda.
> Luego del curso, si queres probar instalar minikube localmente seguí estas [instrucciones](https://kubernetes.io/docs/tasks/tools/install-minikube/)

### Uso de minikube

#### Start minikube

`minikube start`{{execute}}

#### Status

`minikube status`{{execute}}

#### Update

`minikube update-check`{{execute}}

## Interactuar con el cluster usando kubectl

En este escenario partimos de una version pre-instalada de kubectl.
> Instrucciones de [instalación de kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

### Uso de kubectl y contextos

`kubectl config current-context`{{execute}}

`kubectl config get-contexts`{{execute}}

`kubectl config use-context`{{execute}}

`kubectl version --short`{{execute}}

## Alternativa a minikube

[Kind](https://kind.sigs.k8s.io/)
