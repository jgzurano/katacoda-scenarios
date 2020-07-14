En este escenario partimos de una version pre-instalada de helm.
> Instrucciones de [helm](https://helm.sh/docs/intro/install/)

- Helm permite manejar Charts.
- Charts: paquetes pre-configurados que incluyen varios recursos Kubernetes que hacen a una aplicación.
- Builds replicables.
- Permite versionar, tener un historial de releases instalados.
- Soporta sub-charts dentro de charts.
- Existen repos de charts publicos.

Crear chart

`helm create <chart-name>`

Instalar chart

`helm upgrade -i <release-name> <chart-name>`

Listar charts

`helm ls --all-namespaces`{{execute}}
