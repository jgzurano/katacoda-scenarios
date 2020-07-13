#### Services

Es una forma de exponer una aplicación como un network service.
Actua como un load balancer de un conjunto de Pods.
Discovery automatico.

Un service apunta comunmente a un conjunto de pods que son seleccionados mediante un selector.

Tambien es posible que el servicio apunte a:

- Dirección/puerto
- Otro Service
En estos casos se utiliza un Service sin selector.

Fully qualified domain name (FQDN):
`<service-name>.<namespace-name>.svc.cluster.local`

```yaml
apiVersion: v1
kind: Service
metadata:
  name: test-service
spec:
  selector:
    app: nginx
  ports:
    - protocol: TCP
      port: 8000
      targetPort: 80
  type: ClusterIP
```

type: permite especificar que tipo de servicio queremos. Por default es de type: ClusterIP.

Distintos tipos disponibles:

- ClusterIP: Expone el servicio en una cluster-internal IP address. El servicio solo es accesible dentro del cluster. Este es el tipo de servicio por default cuando no especificamos uno.

- NodePort: Expone el servicio en cada nodo en un puerto estatico (NodePort). Es posible acceder el servicio desde fuera del cluster usando `<NodeIP>:<NodePort>`.

- LoadBalancer: Expone el servicio externamente usando un load balancer del cloud provider.

- ExternalName: Mapea el servicio a lo que especifica el externalName (ejemplo: foo.example.com). Retorna un CNAME record, no realiza ningun tipo de proxy.

##### Crear service

`kubectl create -f service.yaml`{{execute}}

Otra forma de crear un service

`kubectl expose deployment test-deployment --port=8000 --target-port=80`{{execute}}

Obtener servicios

`kubectl get service`{{execute}}

Acceder al service mediante port-forward

`kubectl port-forward services/test-service 8000:8000`{{execute}}
