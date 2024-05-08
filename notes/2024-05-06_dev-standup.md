---
title: "2024-05-06: Dev standup"
date: "2024-05-06"
---

## Participants

* Trey
* Rushiraj


## Activities review

* Rushiraj:
    * Continuing work on Cesium map
    * Took gpkg from QGreenland, using PDG pipeline code to get formatted into
      web tiles for cesium.
* Trey:
    * Matt and I started focusing on developing our core set of functionality
      for OGDC ([see this
      issue](https://github.com/QGreenland-Net/qgreenland-net.github.io/issues/40)). PR
      with our initial work
      [here](https://github.com/QGreenland-Net/qgreenland-net.github.io/pull/39).
    * Also began to refine criteria and do assessment of different workflow
      technologies ([see this
      issue](https://github.com/QGreenland-Net/.github/issues/26)). Evaluation
      spreadsheet can be found
      [here](https://docs.google.com/spreadsheets/d/1f8CgOu1wXnaoAfEODrCkxNfY-Xq_as1AJPrPVK74lM0/edit#gid=0).
        * Did an initial assessment of parsl, which we feel has some issues that
          other tools might already have solutions for (e.g., logging bash app
          commands, pods not getting cleaned up in some error states, etc.)
        * In last hour of last week, we explored use of
          [argo](https://argo-workflows.readthedocs.io/en/latest/). We were able
          to configure argo and reproduce our seal-tags workflow in that hour.
          We were very impressed with argo's user-experience, which includes a
          monitoring dashboard and a CLI that provides a straightforward way of
          watching/monitoring jobs without needing to use `kubectl` commands
          directly. See our spike repo
          [here](https://github.com/QGreenland-Net/argo-spike)
    * Trey now at 25% time for QGreenland-Net, which will go down to 0 at the
      end of this month. Will be focusing on other project work this week.
