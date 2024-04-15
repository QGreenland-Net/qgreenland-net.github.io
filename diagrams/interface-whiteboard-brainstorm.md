---
title: "Interfaces diagram - whiteboard"
date: "2024-04-15"
author:
  - name: "{{< var people.matt-fisher.name >}}"
    orcid: "{{< var people.matt-fisher.orcid >}}"
  - name: "{{< var people.trey.name >}}"
    orcid: "{{< var people.trey.orcid >}}"
---

Trey, Matt, and Twila met in Boulder on the afternoon of April 15th to have a
walk-and-talk. The conversation included discussion about QGreenland-Net's
various software componenets and how we can effectively divide work between
members of the ADC and NSIDC dev teams. In the course of this discussion, Matt
suggested that it would be helpful to define the interfaces between components.

Following the walk, Matt and Trey developed the following diagram/sketch of
interfaces:

![Interfaces diagram](/_images/whiteboard_diagram_20240415.jpg)

Interfaces to note:

* GitHub <-> OGDC: two-way communication between a GitHub repository containing
  a data transformation recipe and the OGDC services we depoloy on ADC's k8s
  cluster. We imagine a listener service (maybe a local GHA runner) that waits
  for an incoming HTTP request containing a token + recipe, which it then
  submits to the cluster as a job.

* Recipe author -> OGDC job definition: we want to specify an interface for
  recipe authors to submit instructions (a series of gdal/ogr commands) to the
  OGDC services.

* OGDC <-> DataONE: DataONE already has a defined interface, so we just need to
  be aware of that as we develop the OGDC components that talk directly to
  DataONE.
