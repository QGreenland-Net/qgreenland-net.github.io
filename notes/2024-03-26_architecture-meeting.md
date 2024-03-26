---
title: "2024-03-26: Architecture meeting"
date: "2024-03-26"
---


## Participants

* Rushiraj
* Trey
* Matt J.
* Matt F.


## Discussion

### How will services get deployed at ADC?

* How will NSIDC devs test/initiate deployments of services? Will NSIDC have access to
  ADC infrastructure for developing &amp; testing code? Will we support first-class local
  deployments so I can e.g. run the stack on my laptop?
* How stable is the current way? Are we going to be innovating on deployment, e.g. will
  we be helping with developing cloud/k8s deployments for this project?
    * (Rushiraj) PDG is not using k8s yet, but there are plans for it.
    * Middle of large transition from VMs to using shared k8s cluster to deploy all
      services. Done that w/ some services but not all.
    * Main repository software (metacat + metacat ui; runs DataONE search + discovery,
      many more) is being transitioned to k8s
    * 2 clusters: prod (800 cores) + development (50-60)
        * Production cluster:
            * is restricted to 2-3 privileged individuals / operators.
        * Dev cluster:
            * NSIDC devs can get access
            * Is firewalled. We will need an account on one of their local
              systems or allowlist our IP addresses. Probably will be best to start with
              IP allowlist.
            * “Liberal access policy”. No individual user accounts. Instead
              there’s a namespace for each service being deployed, and each namespace has
              a service account and credentials. They distribute kubectl config files for
              those service accounts to grant access. We would create a QGreenland
              namespace to start with, and then work out more namespace from there.
            * What are first steps to test on the dev cluster? How do we get access and do
              “Hello world” on test cluster?
                * TODO: Matthew Fisher Trey Stafford give rushirajnenuji@gmail.com our IP
                  addresses for allowlist.
                * TODO: rushirajnenuji@gmail.com to check if he has access to `k8s-dev`
                * TODO: create new qgnet service account and namespace, see
                  https://github.com/DataONEorg/k8s-cluster/tree/main/authorization
                * There is some documentation on GH that can help getting started
                  (<https://github.com/dataoneorg/k8s-cluster>)
                * Next step: Group programming session to get connected and do “Hello
                  world” on dev cluster.
    * ADC getting better at Helm, which has improved DX over straight K8s YAML. Matt
      Brooke is the go-to person for Helm Charts.
    * Also working on a project with Google, and they have $alot in cloud credits.
      Exploring transitioning to GCP-friendly kubernetes workflows. Want things to work
      in both on-prem cluster and GCP.


### Pangeo Forge collab/overlap

* Aimee Barciauskas with DevSeed / Pangeo Forge is interested in our project and how it
  aligns with Pangeo Forge goals to serve NASA needs.
    * Now is the time to discuss with Aimee now our technical alignment and paths
      forward collaborating with PF.
* What is everyone thinking/feeling about the technical aspects of this opportunity
  right now? Excited? Concerned? No opinion yet (that’s OK, we’re just starting to learn
  🙂) We can talk about the “people” part of this opportunity in other meetings, e.g.
  with Aimee B.
    * (Matt J) Current workflows tend to be one-off. Want to move towards a system where
      contributing a new dataset kicks off tooling that helps build needed visualization
      data


### Another potential stong partner: Source Cooperative

* Matt J. working with Carl Boettiger
    * https://source.coop/
    * Matt F. works on Openscapes with Carl
    * TODO: Matthew Fisher ask Carl and learn more!


### Data-chunking communities of practice

* (Matt J) There are two major communities of practice for data-chunking, and Pangeo
  Forge falls strongly on one side of that (Zarr, Xarray, Dask, ...); the other side is
  web 3d tiles, and this is where ADC has been focusing more. These approaches come from
  two different use cases (data processing / hardware-accelerated web raster
  visualization). ML models researchers are producing on PDG are vector outputs, and so
  ADC has been focused on how to do fast 3d visualization of this type of data. E.g.
  hundreds of kilometers large point-clouds displaying in the browser.


### High-level arch. diagram

<https://qgreenland-net.github.io/diagrams/high-level-architecture.html>

How did we do? What other levels of diagram would be useful at this point? We like using
the C4 diagramming framework to diagram various levels of a system.
