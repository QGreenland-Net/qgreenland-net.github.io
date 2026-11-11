---
title: "2026-11-11: Dev standup"
date: "2026-11-11"
---

## Participants

* Trey
* Jeanette
* Rushiraj
* Robyn


## Activities review

* Rushiraj - gettting back up to speed after being on PTO
    * Reviewing PRs
    * Plan to work on reusable templates next, after minio replacement
        * Will document work done so far and planned next steps. See if we can share this work.
* Jeanette -
    * Working with SA on s3 bucket setup for ADC clusters (dev and prod)
        * Unclear on user associated with the bucket. May need to setup an email alias (dev email at NCES)
    * Starting to work with Justin to idetify datasets that would be relatively easy to ingest into the portal and develop a pipeline for more easily update the portal. This can be somewhat tedius. Thinking this will be developed in R because the API for interacting with dataone is easier.
    * Would like to work with CU team on what to put into one of the viewfinder cards. Not a ton of time, so probably don't want anything too complicated.
        * Maybe a youtube tutorial. This would be on the simpler side, just need to do the
    * Have some work nearly/mostly finished to run raster data through viz staging workflow.
* Trey
    * Re-familiarizing with project, reviewing PRs
    * Plan to address some small updates to API PR and Minio replacement PRs
    * Would be interested in working on reusable templates work
    * Reviewing some datasets for inclusion in Portal & QGreenland
* Robyn
    * Re-familiarizing with project, reviewing PRs
    * Updates to ogdc-runner for Python >3.12
    * Plan to work on publishing updates to DataONE



## Discussion

* NSIDC is off for Wednesday before thanksgiving
* does imagery viewer have timeseries capabilities?
    * have plans to add, but not currently possible
    * [MetacatUI timeseries ticket](https://github.com/NCEAS/metacatui/issues/2676)
* add dataset tag to `ogdc-recipes` issues for dataset processing tasks


## Action items

- [ ] set up 9:30 am standup on Mondays
- [ ] Move Wednesdays standup to 9AM
