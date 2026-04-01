---
title: "2026-04-01: Dev standup"
date: "2026-04-01"
---

## Participants

* Robyn
* Trey
* Rushiraj

## Discussion

* [name=Trey]
    * Officially on other project work from now until October
    * Wrapping up some QGreenland v4 work today.
* [name=Robyn]
    * merged vegetation and pagination PR's
    * working on #70
    * NOTE: Trey and I will be attending a hackdays event and will be out for that April 13-17
        * we will be on slack and able to answer messages there, but will not be on standups
* [name=Rushiraj]
    * Getting back to OGDC starting today
        * same time allotment as before QGnet:ADC=>75:25
    * Vacation OOO (04/09 and 04/10)
    * Starting to look at DataONE fetch/push and Vegetation recipe today, will open tickets if needed.
    * K8s upadtes:
        * NGinx => Traefik
        * related issues:
            * [k8s-cluster/78](https://github.com/DataONEorg/k8s-cluster/issues/78)
            * [k8s-cluster/82](https://github.com/DataONEorg/k8s-cluster/issues/82)
> steps are:
> **soon**: use traefik's nginx compatibility to move existing configs with nginx-specific annotations over (with some edits, but hopefully not many). Don't use any nginx-specific annotations for new ingresses
> **later**: remove the nginx-specific annotations
> **future**: move to gateway api, which is fully supported by traefik

## Action items

- [ ] (RR) Start ticket on Ingress moveover
    - [ ] Start a discussion on best way forward with the team
- [ ] (RR) Deploy v0.3 to production
