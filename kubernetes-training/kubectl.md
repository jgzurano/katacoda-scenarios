En este escenario partimos de una version pre-instalada de kubectl.
> Instrucciones de [instalación de kubectl](https://kubernetes.io/es/docs/tasks/tools/install-kubectl/)

#### Uso de kubectl y contextos

syntax: `kubectl [command] [TYPE] [NAME] [flags]`

`kubectl config get-contexts`{{execute}}

`kubectl config current-context`{{execute}}

`kubectl config use-context minikube`{{execute}}

`kubectl config view`{{execute}}

`kubectl version --short`{{execute}}
