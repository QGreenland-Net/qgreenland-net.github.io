---
title: "2025-04-23: Dev standup"
date: "2025-04-23"
---

## Participants

* Trey
* Robyn
* Rushiraj

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

* [name=Rushiraj] Parallel exec PR
    * yaml wf for parallel exec
        * resolved issues with serializing the scripts in hera
        * currently resolving issues with passing same artifacts to multiple pods within a single workflow
    * debugging finds:
        * hera `to_file` dumps the python wf to yaml for easier debugging!
        * unlike containers, Script objects do not exist in hera, instead we've use `@script` annotation for passing python objects to a pod.
* Project planning for external user
    * We want to prioritize planning to have an external user join us and test out the OGDC.
    * See the _ONGOING Google Docs notes page for initial brainstorming.
    * Plan for extended standup meeting next week to discuss and plan.

* [name=Robyn] Will be going down to 5% next month
    * available to pair with rushiraj this week or next

## Action items

- [ ] Team meeting next wednesday (4/30) to discuss external user
    - [X] Robyn to set up meeting
