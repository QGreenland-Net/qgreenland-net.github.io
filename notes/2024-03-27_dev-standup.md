---
title: "2024-03-27: Dev standup"
date: "2024-03-27"
---

## Participants

* Matt F.
* Rushiraj
* Trey

## Discussion

* Rushiraj was able to get Docker working on an Ubuntu VM.
* Rushiraj plans to work w/ datasets in the QGreenland code package. Extract one
  of those layers and visualize w/in the cesium map.
* Datasets for end-to-end testing
    * future ice sheet projection layer
    * Seal tags data for first e2e
    * Some datasets are already in gpkg. Rushiraj to look at if any existing
      geopackage datasets are supported for visualization in cesium web portal
      map.
* [demo.arcticdata.io](demo.arcticdata.io),
  [test.arcticdata.io](test.arcticdata.io). Test data nodes pointing to already
  released or soon-to-be released data packages. Plan to create map in one of
  these enviroments, then can review together sometime next week. Can decide how
  to make changes to the qgreenland data portal.
* Question: what functionality do we want to preserve w/ the existing qgreenland
  data portal? E.g., should it still allow for searching datasets that are
  associated w/ a region/location but do not actually have geospatial data. We
  should discuss with Twila/Alyse.
* Familiarize with DataONE API (issue #1): Rushiraj shared a Gist with examples
  of how to interact with API in cURL
