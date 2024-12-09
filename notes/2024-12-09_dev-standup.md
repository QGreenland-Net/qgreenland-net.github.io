---
title: "2024-12-09: Dev standup"
date: "2024-12-09"
---

## Participants

* Trey
* Rushiraj
* Alyona


## Discussion

* Trey: getting back up and running with QGreenland today.
    * Install argo locally & ensure example workflow runs as expected. Improve/add documentation for setup.
    * Work on `ogdc-runner` support for argo w/ `hera`

* Rushiraj: 
    * qgreenland portal is live in prod. 
        * One issue w/ some css in the metrics page. Will address in upcoming release.
    * Argo setup on dev cluster. Ran medium workflow using pgd pipeline w/ PVC. Entire workflow is working.
        * https://github.com/rushirajnenuji/dataone-gse/tree/feature-argo-devk8s-deploy
    * Want to integrate parsl next.
    * Install for agro on `dataone-gse`. `feature-argo-helm`
        * Before Juliet left, she and another dev from Google fellows was working with getting parsl working on kubernetes. Some of that is on the `viz-workflow`
        * https://github.com/PermafrostDiscoveryGateway/viz-workflow

* Alyona: working on WMTS component. Got Argo-helm setup, able to get logged into the cluster.

* Q from Rushiraj: QGreenland portal in prod, only polygon layers. Viz-pipeline does have code for processing other vector and raster formats. Wondering:
    * How do we want to proceed. 
    * For raster layers: each layer has a colormapping. Ideally we want to use the same colors. Do we have docs on our styles? The workflow needs a style during running.
