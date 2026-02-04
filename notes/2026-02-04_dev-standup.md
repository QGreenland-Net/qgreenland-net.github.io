---
title: "2026-02-04: Dev standup"
date: "2026-02-04"
---

## Participants

* Trey
* Robyn
* Rushiraj


## Discussion

* [name=Trey]
    * Merged PRs related to temporary outputs
    * Small PRs open for removing unused config option in meta.yaml
    * PRs for archival/cleanup of argo workflows
    * Working on tracking recipe executions in db
    * Thinking of next release
* [name=Robyn]
    * took look at Trey's PRs and they look great!
        * approved 2, looking over archival still
    * Need to resolve some conflicts with Main on #76 work
        * hoping to have PR ready today - may pass off to Trey if not
* [name=Rushiraj]
    * Incorporated feedback from Trey for parallel shell recipes ([PR 138 ready](https://github.com/QGreenland-Net/ogdc-runner/pull/138))
        * moved partition recipe to `src/ogdc-runner/scripts` module
        * abstract Parallel Interface
            * implemented by individual workflow type
        * additional improvements for code and docs quality
        * some conflicts on getting up to speed with main
    * Making viz workflow PR with Parallel interface almost ready
        * waiting on few changes on viz-workflow package
        * need subsequent WF steps re-partitioning
            * create a ticket for parallel shell to add same support?
    * TODO: review new PRs by Trey on workflow archival/cleanup
