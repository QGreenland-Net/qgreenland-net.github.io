---
title: "2025-01-15: Dev standup"
date: "2025-01-15"
---

## Participants

* Trey
* Rushiraj
* Robyn


## Discussion

* Alyona Slack update:
  - working on STAC catalog development
  - Implementing additional variables for WMTS. Some of the default parameters
    do not apply to other CRSs.
* Trey/Robyn: issue with mac persistent storage for minio (ogdc-helm
  #11). Robyn's mac shows minio reboots when setting up persistent storage with
  an exsiting PVC using a hostpath on her local machine. Trey has confirmed
  multiple times that this works as configured on his linux machine.
  - Rushiraj to test on his mac
  - We think this is less of a priority now. We currently only use argo
    artifacts for intermediate data storage, and [ogdc-runner
    #48](https://github.com/QGreenland-Net/ogdc-runner/issues/48) will "publish"
    the final data outputs to the OGDC workflows PVC. Note that this _does_ work
    on Robyn's mac. Argo can write directly to a volume that comes from a PVC
    that's host-mounted.
* Trey and Robyn are working on updating `ogdc-runner` to "publish" final
  outputs from a recipe to persistent storage via a volume mount of the OGDC
  workflows PVC ([ogdc-runner
  #48](https://github.com/QGreenland-Net/ogdc-runner/issues/48)). This work
  started out of initial work on [ogdc-runner
  #45](https://github.com/QGreenland-Net/ogdc-runner/issues/45), which is aimed
  at developing an interface for creating reusable "templates" for OGDC recipes.
  - Current thinking is that an OGDC workflow could be a "workflow of argo workflows".
  - Driving use-case is:
    1. user submits recipe to "fix" or transform data to support further
       geospatial data processing
    2. We "chain" the viz-workflow workflow to this and generate all of the
       things necesasry for visualization of the resulting dataset
  - Questions about workflow chaining:
    * Thinking of step operation w/ input parameters: can we define some
      arbitrary series of steps and inject those into another workflow, or does
      it make more sense to execute one workflow and feed the output of it into
      another? Trying out both approaches.
* ADC k8s qgnet discussion
  - To think more about: can/should we partition into different environments?
    * Could we have individual deployment namespaces for each dev so we don't
      interfere with each other when making system-level changes? Maybe this is
      a relatively low risk.
    * Can/should we think about namespaces for integration testing?
  - Current components deployed to the ADC qgnet space are all from earlier
    tests and can be cleaned up when working on [ogdc-helm
    #4](https://github.com/QGreenland-Net/ogdc-helm/issues/4).
