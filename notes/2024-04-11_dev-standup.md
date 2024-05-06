---
title: "2024-04-11: Dev standup"
date: "2024-04-11"
---

## Participants

* Trey: Note-taker
* Matt F.: Do-nothinger
* Rushiraj: Screen-sharer


## Activities review

* One person leads taking notes (rotate!) but everyone helps out.
  * Replace these bullets with notes as you go!
* One person shares screen (rotate!)
* Review columns right-to-left:
  * What is newly completed?
  * What is waiting for review?
  * What is currently being worked on?
  * What will we work on next?



## Discussion

* Matt and Trey were exploring how to deploy/setup Apache Spark on k8s, so that we could test running Apache beam workflows.
  Got stuck on configuring Spark. Documentation is dense, a LOT to learn.
    * Spark originally designed for JVM-based langs. Python, Go, others tacked on later. We want to focus on accessibility, we should pick a lang. Python makes sense as a focus.
* Is ADC transitioning from Ray.io -> parsl? Why?
  Are they used for different scenarios?
  * [viz-workflow](https://github.com/PermafrostDiscoveryGateway/viz-workflow/tree/main) README:

    > The Permafrost Discovery Gateway visualization workflow uses viz-staging,
    > viz-raster, and viz-3dtiles in parallel using Ray Core and Ray
    > workflows. An alternative workflow that uses Docker and parsl for
    > parallelization is currently under development.

  * Ray: more manual orechestration of containers
  * Parsl: Better integrated with k8s
* We think it is a good idea to focus on understainding Parsl given the PDG's utilization of this tech over Ray.


## Action items

- [ ] Rushiraj: Ask Juliet for opinions on Parsl vs. Ray
- [ ] Continue exploring Parsl
