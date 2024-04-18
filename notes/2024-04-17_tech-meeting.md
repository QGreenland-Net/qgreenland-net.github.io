---
title: "2024-04-17: Technology discussion"
date: "2024-04-17"
---

## Participants

* Matt Fisher
* Trey Stafford
* Matt Jones
* Rushiraj Nenuji


## Discussion

### Architecture and interface diagrams review

#### New interface diagram

[View new "recipe to OGDC" interface diagram](/interfaces/recipe-to-ogdc.md)

* Matt J:
  * "Looks super compatible" with what ADC is doing already.
  * PDG transformation pipelines are driven by configuration files
  * "Fetch data as first step" is a mistake. Transferring data as part of a pipeline run can take an extremely long time w/ large datasets.
  * For smaller datasets, less of a constraint, but ADC tries to avoid the assumption that data can be fetched from the web.
  * How to leverage existing work on PDG services?
      * Functions for geospatial transformations are already defined in the PDG repo(s)
  * PDG has a deduplication function that lets you choose between two deduplication strategies.
  * PDG has service building blocks that are combined with configuration to define pipelines
  * Ray and parsl are largely the same thing, it shouldn't be hard to switch between them
  * Juliet is moving work from Slurm -> Parsl on k8s.
    * Biggest challenge isn't Ray -> Parsl, it's dealing with the Slurm stuff.
* Matt F:
  * Repo2docker-inspired approach to solving the 80% simple cases
  * Matt J: Need to account for complex workflows, most of work is on 20% "long tail"
    * Performance is extremely cluster-dependent. Our workflow performance is largely limited by i/o (that's our "achilles heel")
    * None of this comes in to play for in-memory datasets
* Streaming?
  * Haven't thought of it at ADC
  * QGreenland doesn't have a use case
* PDG: https://github.com/PermafrostDiscoveryGateway
* GitHub self-hosted runner?
  * Use it with GH Enterprise at ADC
  * We would exceed the "free" runner limits
  * Haven't tried running it on k8s before, usually use VM and S3.
  * Need a release to trigger data changes instead of on every merge to main. Some large products would be technically infeasible.
* Matt J: I like pangeo-forge model for publicly-debated recipes for derived data products. Deriving our stuff on that is a good way to to.
* Matt J: Test case?
  * Matt F: I think we need a broad suite of test cases, maybe 5-10, to represent the variety of data transformation cases we have.
* Matt J: How do we handle triggering processing based on changes to data, when the recipe doesn't need to change?
  * Manage this as part of a versioning scheme?
* https://huggingface.co/spaces/boettiger-lab/leafmap


### Workflow technology choice

* **ADC hasn't decided between Ray and Parsl yet**
* Connect with PDG workflows team (Luigi is lead); they're the ones doing the Ray ML evaluation and will have opinions


#### Why `parsl`?

* Currently use htop/k8s logs to keep track of success/failure. Is there a more robust monitoring solution we could use?

* Juliet was not involved in decision to use parsl instead of Ray; should we consider it a firm technology commitment by ADC or an experiment?
    * Prior evaluation (suggests use of Ray):
        * [ML Framework comparison spreadsheet](https://docs.google.com/spreadsheets/d/1PepQCgrjs2N01DCZOtYoDOjJ1y8crwAQjJjj4lUZEnw/edit?usp=drive_link)
        * [ML Framework Decision Doc](https://docs.google.com/document/d/1xrPp_awbDttadt3CVdAUbdkPDjbAO-Cw-OlVspgKLOo/edit#heading=h.7rwfnkpy7r5w)
    * No firm commitment to ray or parsl.


## Action items

- [ ] Matt J setup meeting with PDG workflows team
- [ ] Matt J add Matt, Trey, Rushiraj to PDG Slack
- [ ] Schedule meeting to discuss quarterly goals. What are our milestones?
  - [ ] Matt J to share calendar w/ Matt F & Trey
- [ ] 





