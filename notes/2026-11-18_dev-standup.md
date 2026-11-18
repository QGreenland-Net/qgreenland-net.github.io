---
title: "2026-11-18: Dev standup"
date: "2026-11-18"
---

## Participants

* Trey
* Robyn
* Jeanette


## Activities review

* Jeanette
    * Merged minio-related PRs
    * Plan to push v0.5.0 tag and see what breaks. We know the pypi publish failed
      in the past, so we plan to look into what the root cause is.
    * After pusing the v0.5.0 tag, we realized it was because the `dataone-auth`
      package was not published to pypi and we were including it as a git
      dependency. Plan to publish `dataone-auth` to pypi to resolve issue.
    * Will plan to work on portal-related updates after wrapping up v0.5.0 release.
    * We will push some items planned for v0.5.0 release to future release.
* Robyn
    * Finished updates to Python versions supported by `ogdc-runner`.
    * Plan to work on publishing workflow outputs to DataONE dataset next. Will
      communicate with Jeanette about API as needed.
* Trey
    * Opened PR to address some updates around workflow submission.
    * Realized that work on tracking workflows in the DB is pre-requisite to
      fully async submissions. Working on that now.
    * Ran into issue with local cluster running out of memory. Will look into
      cause and possible solutions (this after limiting viz workflow memory
      footprint).
