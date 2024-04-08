---
title: "2024-04-04: Pangeo Forge collaboration meeting"
date: "2024-04-04"
---

The primary implications for our project are:

* There is still a mismatch between our needs and Pangeo Forge's NASA/cloud focus going
  forward.
* There will be a lot of churn in the coming years.
* We are welcome to contribute to Pangeo Forge and try to make Pangeo Forge work for our
  needs, but we may be working on our own more than we'd like.



## Participants

* Sean H
* Aimee B
* Rushiraj N
* Matt F
* Trey S


## Discussion

### Path forward for Pangeo Forge

* Original idea was for PF to be a community tool with NSF funding to provide managed
infrastructure, and community would submit recipes, that would go into the catalog. The
bakery would be managed by the PF team.
* Today, funding has run out. Now it needs to be more distributed. NASA & USGS & LEAP are
using PF, and all have their own use cases and infra. Needs.
* The thing that needs to be figured out now is governance.
    * For now, pangeo forge coordination meetings (Aimee, Sean, Greg, e84, USGS)
    * Working on roadmap for where PF will go from here (arch/infra)
* Also important: architecture/infrastructure
    * Moving towards many types of runners and bakeries.
    * PF wants NASA to have one hardened official runner in AWS that can be used for NASA
      datasets.
    * ADC having its own could happen. Pangeo Forge main goal is to focus on the NASA
      instance that can be re-used by other DAACs.
* One recipe modules repo (pangeo-forge-recipes). Focusing on happy path of creating Zarr
  stores. Deferring on other things like Kerchunk because of potential future changes.
* More historical context:
    * Originally envisioned CF-based model w/ managed CI infra, users submit recipes,
      feedstocks execute recipes, write data to centralized catalog. Would be maintained in a
      centralized way. Funding was an issue. Managing the CI infra was too resource-intensive.
    * Shifted to creating a library of tools others can leverage on their own cloud accounts.
    * Community aspects expected to be diminished compared to before. Moving away from
      staged-recipes model to create new feedstocks. Detailed discussions about missing data,
      data inconsistencies, and other data issues were happening here. We don’t think folks
      will be submitting PRs to staged-recipes anymore. Where do discussions happen under this
      model? Still want to have users create recipes in environments tied to own
      infrastructure, but don’t know how to manage discussions.
    * Within NASA community, the shared infrastructure may help provide the natural place for
      community discussion. Important for recipe developers to be able to view logs and
      troubleshoot.
* VEDA 500-foot overview
    * Visualization, Exploration, Data Analysis platform
      Had been working on dashboards for EOS exploration and biomass <...>. Saw lots of
      commonality between tools, cataloguing, APIs. Wanted to build a common infrastructure to
      represent those commonalities. Enable visualizations and analysis in Jupyter notebooks.
      That’s VEDA. The core is “EO API”: STAC metadata where you catalog datasets; can be used
      to deliver API services like TTiler for dynamic visualization, Ti-PG for GeoJSON
      features, …
    * Not for data transformation. Build infra around VEDA to get things into common formats.
      VEDA helps with dynamically rendering tiles (instead of pre-rendering, which would be
      impossible at this scale). You request a specific data need, including fitlers, and then
      you populate that query URL into a tool that supports e.g. WMTS, it looks like a regular
      tile endpoint. Behind-the-scenes, the STAC metadata helps it find exactly the required
      underlying data.
    * COG + STAC together operate similar to Zarr. If you have a collection of data, STAC
      abstracts the collection and COG enables efficient dynamic access.
    * TTiler-xarray: CAn create image tiles dynamically using TTiler-xarray because rio-tiler
      has an Xarray module, enabling Xarray-readable data to be the source data for dynamic
      image tiles. Not yet integrated with PGSTAC
* Microsoft Planetary Computer: a massive catalog of open datasets that are available in
  their object storage. When data providers publish data, Planetary computer run
  transformations that e.g. cloud-optimize the data, post-process, apply metadata.
    * Created STAC Tools Packages (https://github.com/stactools-packages); anyone can create
      an “STP” which is a template which allows you to package all info about how to transform
      a legacy format into a new output format and generate STAC compliant metadata.
    * STP is a place like PF where people can coordinate on upstream data format issues and
      share best practices. 
    * Can create an STP for an individual dataset to fix up issues.
    * DevSeed orchestrates STP at scale in different ways. 
          * https://github.com/developmentseed/stactools-pipelines - for AWS

### Questions / needs from QGreenland-Net

* Our use case feels “off the beaten path”; if we contribute to the pangeo-forge ecosystem
  to help add support for our use case (uploading non-Zarr data file outputs to a public
  archive).
    * In the Pangeo Forge paper, it was explicitly called out that PF is providing views in to
      the original source of truth data and not acting as an archive, but our processing needs
      would be more about creating derived datasets that can meet the wide variety of common
      needs users have for geospatial datasets. For example, a dataset with low quality
      metadata or data errors must be “cleansed” by researchers individually, as there’s no
      easy way to share the derived dataset. We imagine a future where Pangeo Forge recipes
      programmatically create derived datasets with generated provenance metadata that allows
      derived datasets to link all the way up the chain to the original source of truth.
* Is it a main goal to improve the vanilla-Beam-ness of recipes? Can we help with that?
  How?
    * We are new Beam users, but are learning quickly!
      Aimee: Open to feedback for how to do this! Open issues on pangeo-forge-recipes
      Pangeo-forge-runner may be going away
* We have ideas for new re-usable transforms that we’d like to see in
  pangeo-forge-recipes. Should we contribute to that or create a new library which
  provides those recipes optionally?
    * Geospatial-specialized PTransforms
    * Generic subprocess-calling PTransform
    * E.g. https://pangeo-forge.readthedocs.io/en/latest/ecosystem.html 
* QGreenland-Net is funding Matt to work on Openscapes. How can we take advantage of
  Openscapes specialization in cross-DAAC collaboration to help understand and meet
  NASA/DAAC needs and bring in collaborators to move faster?
* If we do decide to integrate with PF, Aimee says “yes, we can integrate and can
  contribute!” Join Pangeo Forge coordination meetings! Might be on a hiatus now, in the
  air. Next months will be disruptive because the approach is more of a do-ocracy with
  less centralized governance. 
* Aimee’s roadmap for governance is a WIP. More work needs to be done to communicate the
  new vision for PF.
* Look at Aimee’s cloud optimized formats guide: https://guide.cloudnativegeo.org/ 



### What / how QGreenland-Net can contribute upstream

We have 3 experienced Python developers and experienced Conda users, one experienced
Conda Forge maintainer, and …

* We can get venvception on Conda Forge to help release v0.10.0 of pangeo-forge-runner
  there
* Can ADC act as a Bakery?
    * Is there a concept of an “output repository” for Pangeo Forge? Can DataONE become an
      output repository? This relates to the previous questions about the goals of Pangeo
      Forge.
    * PF goal to build NASA infrastructure supports this, potential for re-use?
* Contribution of a feedstock for the Calibrated mass loss projections from the Greenland
  Ice Sheet dataset (typical nc-to-Zarr dataflow)
