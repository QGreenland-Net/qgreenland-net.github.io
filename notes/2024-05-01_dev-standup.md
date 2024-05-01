---
title: "2024-05-01: Dev standup"
date: "2024-05-01"
---

## Participants

* Trey
* Rushiraj

## Discussion

* Trey and Matt F. got initial parsl-based workflow working with "simple
  recipe". Fetched csv seal tag data, transformed it into a geopackage, and
  wrote out to persistent volume on ADC k8s.
    * <https://github.com/QGreenland-Net/ogdc-runner/pull/6>
    * <https://github.com/QGreenland-Net/ogdc-recipes/pull/2>
* Rushiraj continuing to work on cesium web map. Issue with networking on k8s w/
  nginx. Plan to reach out to Matthew Brooke about this.
* Trey & Matt F. plan to focus on preparing for our [dedicated discussion about
  OGDC design](https://github.com/QGreenland-Net/.github/issues/33):
    * Enumerating criteria/thoughts about workflow technologies in preparation
      of making a decision about what we'll use (e.g., parsl, ray, or
      beam+spark?). [GH
      issue](https://github.com/QGreenland-Net/.github/issues/26)
    * Developing list of core functionality for OGDC. [GH
      issue](https://github.com/QGreenland-Net/.github/issues/31)
