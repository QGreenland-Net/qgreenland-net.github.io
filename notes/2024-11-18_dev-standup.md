---
title: "2024-11-18: Dev standup"
date: "2024-11-18"
---

## Participants

* Trey
* Robyn
* Rushiraj
* Alyona

## Discussion

* Introductions
* Setup ADC k8s credentials for Robyn
    * Need Robyn's IP
    * Need Robyn's GPG keys
* Updates from NSIDC
    * Trey: 18% this month, 84% Dec. and Jan
    * Robyn: 48% Nov. - Feb.
* Updates from ADC
    * Rushiraj - 75% of time for now on QGreenland
    * Alyona - ~75% of time for now
    * OGDC development - latest argo developments, etc.
        * Argo
            * Feel comfortable moving forward with using argo as our tech choice for the OGDC.
            * We may still want to use parsl under the hood, and may want to experiment with how to use argo to deploy parsl workflows onto the cluster.
            * Were able to get a few recipes working with argo
            * Good community support, open-source
            * Argo has CI/CD pipelines that might help us to integrate the use of GitHub.
            * Recommend use of helm charts for kubernetes
                * There is helm support for argo.
                * Bitnami helm charts are well-done. Was able to successfully run on local cluster
                * Planning to work on adding argo to the ADC k8s cluster this week.
    * Have made some progress on subset download feature. Once processing is complete and visualization ready, if someone wants data for an area of interest, allow user to draw e.g., polygon feature to subset-download the data
        * STAC or e.g., WMTS from the 3D tiles
    * Portal development
        * Have some polygon layers
        * [Demo portal](https://demo.arcticdata.io/portals/QGreenland?lt=74.77873328588174&ln=-38.16157414713331&ht=4092394.925654454&hd=359.9999999999987&p=-89.9742102073684&r=0&el=land%2Cicefilled%2Clandfilled%2Cosm)
* Setup recurring ADC/NSIDC dev meetings for Dec-Feb
    * 2x week, 15 min standups
    * Not too early
    * Rushiraj busy noon-1 pacific on Mondays, free on Wed. Alyona has same availability.
* Review backlog & plans for the next few months


## Action items

- [ ] Create a meeting to discuss OGDC API. Issue: https://github.com/QGreenland-Net/.github/issues/33
