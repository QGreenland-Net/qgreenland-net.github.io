---
title: "2025-10-15: Dev standup"
date: "2025-10-15"
---

## Participants

* Trey
* Robyn
* Rushiraj


## Activities review

* Trey
    * Wrapped up reviews of `ogdc-helm` PRs
        * feature-24 ingress PR: thoughts about architecture of the OGDC runner
          interface with argo. After this first depolyment, we should think
          about if we should add a service layer to the cluster that acts as the
          interface between users and argo workflows. See
          https://github.com/QGreenland-Net/ogdc-helm/pull/27#issuecomment-3404049123
          for context.
        * Will review GSW poster draft
* Rushiraj
    * Have some portal updates ready, will plan to share with team
    * Still dealing with some visual artifacts with polygons, will reach out to front end team.
    * Going to look at running examples with `ogdc-runner` PRs and confirm things run as expected.
* Robyn
    * [PR that cleans up succesful pods](https://github.com/QGreenland-Net/ogdc-helm/pull/30)
