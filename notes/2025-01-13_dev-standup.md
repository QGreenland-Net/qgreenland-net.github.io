---
title: "2025-01-13: Dev standup"
date: "2025-01-13"
---

## Participants

* Trey
* Rushiraj
* Robyn
* Alyona


## Discussion

* Trey
    * Helping Robyn resolve issue with PVC hostpath on Mac. https://github.com/QGreenland-Net/ogdc-helm/pull/12 sets up persistent storage for Argo artifacts on local disk (in dev). By default this is a directory where the`ogdc-helm` repo is checked out on the dev's computer. This works for me, but minio goes into a crash-reboot cycle on Robyn's mac - not sure why yet.
    * Continuing work on https://github.com/QGreenland-Net/ogdc-runner/issues/45. Hoping to have a PR within the next couple of days so that we can discuss the approach.
* Rushiraj: working on styling in viz workflow
    * 3-4 products (python package). Tiling (hoping to be ready later this week), rasterization, 3d tiles.
    * Workflow is orchestrator that determines which steps to execute
    * Architecture discussion w/ Matt Jones - not sure exactly on CI board meeting timing, maybe Feb. 17th, before we start year 2. Will schedule a call w/ Matt J. for us to chat and make sure we're on the same page piror to that discussion w/ CI board.
* Alyona
    * Finalizing WMTS work. Discussions around scale demoniation - once this is done, PR should be ready to merge.
    * Started working on STAC with Robyn
* Robyn
    * Trying to fix issue w/ hostpath on mac
