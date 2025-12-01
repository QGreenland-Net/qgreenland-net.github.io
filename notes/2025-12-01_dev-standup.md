---
title: "2025-12-01: Dev standup"
date: "2025-12-01"
---

## Participants

* Robyn
* Rushiraj



## Activities review

* [name=Rushiraj]
    * [WIP] Successful integration of the parallel orchestrator with shell recipe
        * Review for shall recipe outputs / publishing outputs
            * each step/operation stores output as an artifact with minio
            * rsync minio -> WF PVC at the end of the WF (post running all ops)
        * Viz-WF
            * uses PVC `mount_path` as root / base while writing outputs
        * Parallel?
            * write directly to PVC?
                * aviod costly copy operation/s

    * [Next] replace viz-wf specific parallel implementation with the new interface

* [name=Robyn]
    * added bump-my-version and taught rushiraj about it.
    * reviewing Trey's PR's
    * working on [#118](https://github.com/QGreenland-Net/ogdc-runner/issues/118)\
    * approves Rushiraj viz workflow docs pr.



## Action items

- [ ] [name=Rushiraj] ::  Checkout existing PRs by Trey
    - [ ] [service layer](https://github.com/QGreenland-Net/ogdc-runner/pull/115)
    - [ ] [skaffold config](https://github.com/QGreenland-Net/ogdc-helm/pull/38)

- [name=Robyn Marowitz] Looking through existing PRS
- looking at rushirajs pr that he is opening.
