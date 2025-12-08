---
title: "2025-12-08: Dev standup"
date: "2025-12-08"
---

## Participants

* Robyn
* Trey
* Rushiraj


## Discussion

* [name=Trey]
    * Recent work to setup postgresql database for OGDC - reworking to use CNPG.
    * Also looking at setting up authentication for API.
* [name=Robyn]
    * Merged 'valiate-all-recipes' code pr [here](https://github.com/QGreenland-Net/ogdc-runner/pull/128)
    * working on [#117](https://github.com/QGreenland-Net/ogdc-runner/issues/117) and [#116](https://github.com/QGreenland-Net/ogdc-runner/issues/116)
        * drop the z values to speed up viz workflow test
    * Out of office 12/11-12/15
* [name=Rushiraj]
    * Finishing work on saving shell cmd specific outputs to a dir on PVC
    * Issues with testing - local dirs
        * TODO: confirm dropped functionality..? - yes.
    * Team catch up - CNPG Postgres
    * Hashstore discussion
        * We would not write to this directly, we would use the dataone api/service responsible for writing (metacat)
            * Phase 1: Current approach- shell recipe writing to metacat
            * Phase 2: Read from hashstore
            * Phase 3: Figure out how to write to hashstore, via metacat or some other new API


## Action items

- [ ] discuss holiday PTO
