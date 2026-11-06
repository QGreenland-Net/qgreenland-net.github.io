---
title: "2026-10-14: Dev standup"
date: "2026-10-14"
---

## Participants

* Trey
* Robyn
* Rushiraj
* Jeanette


## Discussion

* No portal updates since our all-hands
* Service working well w/ parallel support for recipes
* Keycloak authentication is up and running on the dev cluster
    * Need ORCID for Trey and Robyn to get accounts/permissions setup
* Pending PR for making the OGDC API more restful
  * Ran into an issue with minio being deprecated. Rushiraj working on replacing with s3 API w/ a PVC. Temporary outputs will also be stored on that s3 PVC.
