## “Naked” Pods versus ReplicaSets, Deployments, and Jobs

Don’t use naked Pods (that is, Pods not bound to a ReplicaSet or Deployment) if you can avoid it. Naked Pods will not be rescheduled in the event of a node failure.

A Deployment, which both creates a ReplicaSet to ensure that the desired number of Pods is always available, and specifies a strategy to replace Pods (such as RollingUpdate), is almost always preferable to creating Pods directly, except for some explicit restartPolicy: Never scenarios. A Job may also be appropriate.

Here are some examples of workload resources that manage one or more Pods:

    Deployment
    StatefulSet
    DaemonSet


PodTemplates are specifications for creating Pods, and are included in workload resources such as Deployments, Jobs, and DaemonSets.

This is your first step.

## Task

Este es un ejemplo de __example__

This is an _example_ of creating a scenario and running a **command**

`echo 'Hello World'`{{execute}}

#### Otros tipos de controllers

StatefulSets

StatefulSet is the workload API object used to manage stateful applications.

DaemonSet

A DaemonSet ensures that all (or some) Nodes run a copy of a Pod. As nodes are added to the cluster, Pods are added to them. As nodes are removed from the cluster, those Pods are garbage collected. Deleting a DaemonSet will clean up the Pods it created.

Some typical uses of a DaemonSet are:

    running a cluster storage daemon on every node
    running a logs collection daemon on every node
    running a node monitoring daemon on every node