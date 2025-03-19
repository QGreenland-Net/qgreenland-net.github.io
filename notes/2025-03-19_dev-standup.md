---
title: "2025-03-19: Dev standup"
date: "2025-03-19"
---

## Participants

* Trey
* Rushiraj
* Robyn

## Activities review

* One person leads taking notes (rotate!) but everyone helps out.
  * Replace these bullets with notes as you go!
* One person shares screen (rotate!)
* Review columns right-to-left:
  * What is newly completed?
  * What is waiting for review?
  * What is currently being worked on?
  * What will we work on next?

## Discussion

* Trey: no new updates. 
* Rushiraj: working on portal updates. Trying to test query updates against prod portal. It has been updated, but need to make sure that it points to the production member node.
* Robyn: not much to update right now
    * Question on `ogdc-helm` PR: this is marked "WIP". What are next steps?
        * Need to document things we have tried so far
        * ARgo workflow stack comes with postgresql, but we can add a seprate db in the same namespace and use it.
        * With secret in place, cannot login to postgresql as postgresql user
        * With default credentials in place, can login.
    * CI meeting prep
        * Slides: https://github.com/QGreenland-Net/qgreenland-net.github.io/pull/88
* Side question: do we have a solution for keeping cross-team secrets?
    * E.g., if we need to setup an admin account for an external service, where do we save the username and password in a secure place that only QGreenland-Net team members can access?
* Alyona: could not join today, but has open PR for parquet work.

## Action items

- [ ] Create an issue to think more about/make a decision around secrets
