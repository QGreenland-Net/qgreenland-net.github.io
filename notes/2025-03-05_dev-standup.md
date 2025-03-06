---
title: "2025-03-05: Dev standup"
date: "2025-03-05"
---

## Participants

* Robyn Marowitz
* Alyona Kosobokova
* Rushiraj Nenuji
* Trey Stafford


## Activities review

* Trey - no new updates - low allocation
* Rushiraj
    * data integration - struggling to connect to postgres database with current secrets
    * wants us to look at the PR
    * modification to simple recipe to run in parallel - havent been able to get it going yet but can have multiple inputs and use different docker images
    * rushiraj was able to deploy on the cluster but not able to run the recipes because its expecting the input and output directories
    * will open PR for that
* alyona
    * prepping for presentation tomorrow with rushiraj
    * setting up recipes
    * has been running them in different namespace now in dev qgnet
    * trying to set up a system to calculate run time stats for viz-workflow (parsl infinite workers, limited workers etc) some weirdness in general
        * looking into logs for that
    * needs to get back to WMTS
* robyn
    * Worked on qgnet cluster config
    * Setup ReadTheDocs for OGDC-runner. Updating formatting now so it's a little nicer to read. PR incoming.
    * Will look at Rushiraj's PRs
    * Quarto website for QGr-Net workshops in progress


## Discussion

* tomorrows presentation for rushiraj and alyona is for PDG visualization - showing argo workflows as well
* discussing architecture diagram on the call after this to prep for CI advising call


## Action items

- [ ] Robyn - look at rushiraj PR
- [ ] rushiraj to open pr for deploying on the cluster
