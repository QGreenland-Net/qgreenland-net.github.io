---
title: "2025-10-07: Dev standup"
date: "2025-10-07"
---

## Participants

* Trey
* Rushiraj
* Robyn

## Activities review

* Rushiraj:
    * Figuring out helm install. Tried a few things for issue. Looking for help to debug problems
        * minio on local cluster. Security issues related to deployment
        * On dev cluster, minio has permissions and able to setup ingress, getting 200 response from endpoint, but no argo dashboard.
            * Port forwarding locally does work.
    * Working on release of viz-packages
* Robyn
    * Looked at in-progress branch Rushiraj started for helm updates
    * Started working on issue related to cleaning up completed pods. Permissions issue that we hope is resolved with updates to helm charts.
* Trey
    * Few PRs related to documentation and code organization.

## Discussion

* QGreenland Data Portal
    * Dataset review items (e.g., soil types)
    * Feedback (QGnet portal) from Twila, Alyse, Angie:
        * [google doc](https://drive.google.com/drive/folders/1F9U2ZvcskGsPm-GqmiEfxel11Au-ysWn)
    * https://github.com/QGreenland-Net/.github/issues/74
* Proposing a coworking session to pair code together - nice for productivity and quick feedback

## Action items

- [x] Go through project board
- [x] consider making a swim lane for epics on the project board so they appear separate from standard issues
