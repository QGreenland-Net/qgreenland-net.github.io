---
title: "2024-12-18: Dev standup"
date: "2024-12-18"
---

## Participants

* Trey
* Alyona
* Rushiraj
* Robyn


## Discussion

* Trey
    * Updated `ogdc-argo` repo. Now named `ogdc-helm` since it provides more than just argo.
    * Renamed the namespace from `argo-helm` to `qgnet` and updated references from `dataone-gse` to `ogdc`
    * updated `ogdc-runner` to support new default namespace of `qgnet`
    * Updated `ogdc-runner` to support "dev" environmnet, where a local docker image can be built and used for workflow executions.
    * Currently learning more about `helm` and making it easier to e.g., override the PV host path in dev.
    * [dataone_k8s_dev](https://github.com/DataONEorg/k8s-cluster)
* Rushiraj
    * Continuing to modularize PDG pipeline work. Thinking about how we might integrate argo or parsl. Figuring out paralell processing. 
        * Maybe pair on this after the holidays.
    * Looking over architecture diagrams. 
    * Argo artifact repository
        * [Hash store](https://github.com/DataONEorg/hashstore) for objects in dataone
        * input artifacts could be directly used from disk using this store, instead of needing to fetch it as a separate step.
* Alyona
    * Continue to working on WMTS generator class
    * Went over parameters and removed redundancies
    * Adjusting settings & testing.
    * Next step: add specific raster capabilities
    * Will be able to query specific tiles from QGIS. 
* Robyn
    * Working on bringing over ice basins example to `ogdc-recipes` to run with `ogdc-runner`. 
    * Planning to init contributing doc
    * Familiarizing with helm
