---
title: "2026-10-21: Dev standup"
date: "2026-10-21"
---

## Participants

* Rushiraj
* Trey
* Jeanette


## Discussion

* Rushiraj working on updates for s3 (replacement of minio).
    * Testing support for local development
        * https://github.com/seaweedfs/seaweedfs
    * Working with Nick on setting up cephfs config
    * Steaming for providing temporary outputs - need to think about how to handle auth for this.
* [OGDC cheatsheet](https://hpad.dataone.org/V64aTuqeQ8ShFjrEozKdFA)
* [Latest H3 demo](https://test.arcticdata.io/portals/permafrost-h3-demo)
* Jeanette
    * wrapping up work generating h3 summaries
    * Plan to do updates to numpy and other packages
* Portal survey for coordinating board meeting
    * Tentatively planned coordinating board meeting: Nov. 6th
    * Open-ended questions
        * UX test: lead folks down a particular path (select a layer and visualize it)
        * What datasets would like to be seen
        * Google form with just a few questions that should take 5-10 mintues
* Prioritizatoin  discussion
    * Work to publish metadata to DataONE (existing and new datasets)
        * Jeanette has a lot of experience publishing with the R api - could help.
        * Can't publish directly to DataONE storage backend, so very large datasets would be painful bc it requires transfer over the network
    * Tiling/mosaicing services: have made good progress on these milestones. Would like to see addional datasets visualized in the portal
    * Tracking recipe execution in the database could be a good "starter task"
    * Prioritize datasets we want to process via the OGDC. We can handoff curation of these to Justin.
        * Think about if there are any datasets we would want to visualize before our CB meeting.
    * Think about filters for GIS/QGreenland-ready data
        * Pointers for WMTS layers.
