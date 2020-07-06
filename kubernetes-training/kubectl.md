En este escenario partimos de una version pre-instalada de kubectl.
> Instrucciones de [instalación de kubectl](https://kubernetes.io/es/docs/tasks/tools/install-kubectl/)

- CLI para ejecutar comandos sobre clusters de Kubernetes.
- Interfaz estándar de comunicación con el clúster.
- Permite realizar operaciones sobre todos los objetos de kubernetes: namespaces, pods, deployments.
- Obtener logs y describir estado de objetos, información de nodos y cluster en general.

syntax: `kubectl [command] [TYPE] [NAME] [flags]`

- `command`: acción a realizar sobre uno o más recursos: create, apply, get, describe, delete...
- `TYPE`: tipo de recurso sobre el que queremos actuar. Por ejemplo: service, pod, deployment...
- `NAME`: el nombre del recurso sobre el que queremos realizar la acción.
- `flags` especifica flags opcionales para la ejecución del comando:
    Por ejemplo -s para especificar la dirección y el puerto de la API del server.
    Especificar namespace con `-n`
    Modificar el output default por json o yaml `-o yaml`

#### kubeconfig

mostrar config (`$HOME/.kube/config`)

`kubectl config view`{{execute}}

Completar comandos kubectl en bash
`echo 'source <(kubectl completion bash)' >>~/.bashrc`{{execute}}

#### Uso de kubectl

version de client

`kubectl version --client --short`{{execute}}

version de client y server

`kubectl version --short`{{execute}}

`kubectl cluster-info`{{execute}}

listar clusters configurados

`kubectl config get-clusters`{{execute}}

#### Contextos (cluster, user, namespace)

syntax: kubectl config set-context [NAME | --current] [--cluster=cluster_nickname] [--user=user_nickname]
[--namespace=namespace] [options]

`kubectl config set-context test --cluster=https://1.2.3.4 --user=user --namespace=test`

`kubectl config get-contexts`{{execute}}

`kubectl config current-context`{{execute}}

`kubectl config use-context minikube`{{execute}}
