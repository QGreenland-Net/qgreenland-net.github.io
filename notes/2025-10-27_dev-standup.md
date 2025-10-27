---
title: "2025-10-27: Dev standup and planning discussion"
date: "2025-10-27"
---

## Participants

* Trey
* Robyn
* Rushiraj


## Activities review

* [name=Robyn]
    * Wrapping up poster following translations
    * Draft PR for GHCR open - finishing it up after poster
* [name=Rushiraj]
    * Extending viz-workflow for changes from latest release (issu#69)
    * Documentation for viz-workflow (issue#62)
* [name=Trey]
    * Merged ogdc-runner PRs allowing workflow config spec in recipes (see: [#98](https://github.com/QGreenland-Net/ogdc-runner/pull/98))
    * Wrapping up PR fixing bug w/ viz-workflow when a remote recipe repository is used (see issue [#101](https://github.com/QGreenland-Net/ogdc-runner/issues/101))


## Discussion: plans and priorities

* 1. Wrapup production release of ogdc-helm
    * Setup meeting w/ Matthew B.
        * Can usually be async - just message Matthew.
    * Document release workflow for future versions
* 2. Portal updates: prepare in advance of GSW (Nov. 7)
    * See: [#75: Data Portal: updates for GSW](https://github.com/QGreenland-Net/.github/issues/75)
* 3. Data publication: publish to a web-accessible location (e.g,. DataONE)
    * [Story for outputs on ADC storage](https://github.com/QGreenland-Net/.github/issues/27)
        * [Issue to create new DataONE dataset](https://github.com/QGreenland-Net/.github/issues/71)
        * [Issue to update existing DataONE dataset](https://github.com/QGreenland-Net/.github/issues/70)
        * [Issue to update tile store](https://github.com/QGreenland-Net/.github/issues/72)
        * Do we need a new feature issue for temporary outputs?
* 4. ogdc-runner web service: setup a web service that sits in front of Argo and acts as the public-facing API.
    * Deployed with helm alongside argo/minio, so storage specifics do not need to be known in advance. Relevant discussion: (TODO)
    * Other benefits:
        * We gain more isolation of cluster resources/permissions
        * Relatively straightforward auth (?)
            * https://github.com/QGreenland-Net/ogdc-helm/issues/25 - can setup auth in front of web service and not have to do that ^
        * Service can track recipe outputs and serve output data that isn't published to DataONE
    * We have been anticipating this for a while. Our [high-level architecture diagram](https://qgreenland-net.github.io/diagrams/high-level-architecture-v3.3.html) shows this.
* 5. Use data one Hash Store for data inputs/ outputs
    * we have some stories for this and it sort of is the other end of publishing to a web-accessible location - working towards end to end implementation
        * [hash store issue](https://github.com/QGreenland-Net/ogdc-runner/issues/37)
        * [prototype issue](https://github.com/QGreenland-Net/.github/issues/12)
    * We think this makes sense to tackle after we complete work on publishing outputs.
* Planning for researcher workshop / hackathon.
    * Not an immediate priority, but we should be thinking about this for year 3!


## Action items

- [ ] Setup meeting w/ Matthew B.
- [ ] Create issues for web service
- [ ] Plan to review and cleanup board
