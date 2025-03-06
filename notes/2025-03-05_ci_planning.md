---
title: "2025-03-05: QGnet CI Internal Team call"
date: "2025-03-05"
---

## Participants

* Matt
* Jim
* Trey
* Robyn
* Alyona
* Rushiraj


## Activities review

* Technical diagrams:
    * [high level architecture](https://qgreenland-net.github.io/diagrams/high-level-architecture-v2.html)
    * [sequence diagram](https://qgreenland-net.github.io/diagrams/ogdc-sequence-diagram.html)

* Github pointers:
    * [ogdc-runner](https://github.com/QGreenland-Net/ogdc-runner)
    * [ogdc-helm](https://github.com/QGreenland-Net/ogdc-helm)
    * [ogdc-recipes](https://github.com/QGreenland-Net/ogdc-recipes)
* Project board:
    * [kanban](https://github.com/orgs/QGreenland-Net/projects/1/views/1)

## Discussion

* High-level architecture
    * We should define acronyms (e.g., what is "OGDC")
    * Add a legend
        * Consider labeling components with different colors
    * Expand the "recipe" box. Show that this is how one specifies:
        * Input dataset
        * data transformations (e.g., reprojection)
* CI board background
    * Claire Porter: Polar Geospatial Center. Direct experience with large geospatial dataset processing
    * Carl Boettiger: Analytical & GIS background, provides user-perspective
    * Some technologies like Argo and K8s may be new to board memebers, but they have deep understanding of geospatial data processing
    * We should be ready to ask questions and seek advice. The CI board is here for our benefit. concerns.
* We should develop some slides that describe/introduce the project and setup the discussion around the architecture diagrams
    * Show how things work now, in as much detail as possible. (e.g., how does parallelization work)
    * Walk through an example
* Sequence diagram:
    * Usually these are much more detailed (e.g., they show specific function calls and what kind of messages are passed around)
    * Not sure the existing diagram adds much
    * We should strive to improve this over time
    * There may be more than one sequence diagram depending on the situation (e.g., reprojecting a very large raster may look different than subsetting a small vector dataset)
* Documentation developed for this CI board meeting can serve as a foundation for contributor docs that we will leverage near the end of year 2 when the developer workshop takes place.
* We think that we are close to an MVP dev deployment to the ADC cluster. We think achieving that before the CI board meeting would be good.
    * Plan to meet with CI board sometime in mid-April. Matt Jones to schedule.



## Action items

- [ ] [diagram updates](https://github.com/QGreenland-Net/.github/issues/65)
- [ ] [create slide-deck](https://github.com/QGreenland-Net/.github/issues/66)
