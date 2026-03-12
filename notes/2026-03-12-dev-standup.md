---
title: "2026-03-12: Dev standup"
date: "2026-03-12"
---

## Participants

* Trey
* Robyn
* Rushiraj


## Discussion

* [name=Trey]
    * Working on QGreenland v4alpha2
* [name=Robyn]
    * mentioned last time merging open PR's
    * starting work on second pat of #70 to publish to dataone.
* [name=Rushiraj]
    - Working with Alyona on resolving some issues with PDG packages w.r.t. file locks and parallel processing
        - Issues when writing features to tiles when different workers try to store sets of features within a single tile. related [brainstorming doc](https://docs.google.com/document/d/1_CoVuHnI8DmL5vy-SnTtuvRpzxEQT327wJyNlGVR134/edit?usp=sharing)
        - still WIP..
    - tag and deploy `v0.3`
        - Updated changelog for parallel shell recipe with [3a9b8be](https://github.com/QGreenland-Net/ogdc-runner/commit/3a9b8bec386e6b174f91b4043cf92d24841d2664)


## Action items

- [ ] Rushiraj to deploy current develop/main to dev-k8s
    - [ ] Tag and generate release for `v0.3`
    - [ ] Work on deploying to prod-k8s post successful testing on dev-k8s
