#### #1 Cluster autoscaling

- Usando [cluster autoscaler](https://github.com/kubernetes/autoscaler/tree/master/cluster-autoscaler)
- Puede agregar o quitar nodos del cluster (scale-up/scale-down).

- Agregar nodos cuando se cumple:
  - Existen pods que no pueden asignarse a ningun nodo por falta de recursos.
  - Agregar un nodo similar a los existentes ayudaria a que los pods pendientes se asignen.

- Quitar nodos cuando se cumple:

  - La suma de los requests de cpu y memoria de todos los pods no superan el 50% de la capacidad (asignable) del nodo.
  - Todos los pods del nodo pueden relocarse a otros nodos.

#### #2 Horizontal Pod Autoscaler

- Escala automaticamente el numero de pods de un deployment, replicaSet o stateful set.
- Observa uso de cpu, memoria.
- Soporta metricas externas.
- No aplica a DaemonSets.

Crear horizontal pod autoscaler para un deployment

`kubectl autoscale deployment test-deployment --cpu-percent=50 --min=1 --max=10`{{execute}}

Obtener HPAs

`kubectl get hpa`{{execute}}

#### #3 Vertical Pod Autoscaler

- Ajusta automaticamente la reserva de cpu/memoria en un conjunto de pods.
- Mejora la utilizacion de recursos.
