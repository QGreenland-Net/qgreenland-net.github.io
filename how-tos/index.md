---
title: "How-tos"
# TODO:
# listing:
#   type: "table"
#   categories: true
#   fields:
#     - "title"
#     - "date"
#   sort:
#     - "date desc"
---

## How to share a calendar across organizations

### NSIDC -> ADC

In the Outlook web view:

* Settings (cog wheel in upper right of outlook)
* -> Calendar
* -> Shared calendars
* -> Publish a calendar"
    * You can set the "can view when I'm busy" permissions if you'd like to share only
      availability, not meeting titles.


## Kubernetes

### How to configure Rancher Desktop

* After installation, you may need to set the VM resource limits higher.
    * The defaults were too low for some deployments and we bumped to 6 CPUs & 8+ GB
      memory in response.

### How to switch between clusters (change context)

Developers should have access to two sets of configuration:

* Rancher desktop default config (`~/.kube/config`)
* ADC `dev-qgnet` cluster config (`~/.kube/qgnet_config`)

The `KUBECONFIG` envvar should include these paths:

```
export KUBECONFIG=~/.kube/qgnet_config:~/.kube/config
```

Once `KUBECONFIG` is set, you can view available contexts with `kubectl config
get-contexts`:

```
$ kubectl config get-contexts
CURRENT   NAME              CLUSTER           AUTHINFO          NAMESPACE
*         dev-qgnet         dev-dataone       dev-qgnet         qgnet
          rancher-desktop   rancher-desktop   rancher-desktop
```

To set the context:

```
kubectl config use-context <context-name>
```

For more information about how to configure access to multiple clusters, see the
kubernetess [Configure access to multiple clusters
doc](https://kubernetes.io/docs/tasks/access-application-cluster/configure-access-multiple-clusters/).
