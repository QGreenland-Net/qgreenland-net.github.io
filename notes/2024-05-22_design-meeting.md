---
title: "OGDC Design Meeting"
date: "2024-05-22"
---

## Background

We identified a need for a longer (2+ hours) collaborative design session to flesh out a
design vision and technical roadmap. We also identified a need to avoid a Big Design Up
Front (BDUF) approach.

[Previous discussion notes about dev milestones](https://docs.google.com/document/d/1IOWOMqCkb7HLzh2Gq0I0LjreoPm5xymBO67Utly-pks/edit)


## Discussion

The sub-headers added here are not intended to be exhaustive. Please add more.


### Design goals and requirements

Documentation: https://qgreenland-net.github.io/requirements.html

* Matt J: Be able to do everything in:
  * https://github.com/PermafrostDiscoveryGateway/viz-staging
  * https://github.com/PermafrostDiscoveryGateway/viz-raster
  * https://github.com/PermafrostDiscoveryGateway/viz-3d-tiles
  * https://github.com/PermafrostDiscoveryGateway/viz-points
  * Be able to generate a processing pipeline based on examining incoming data
* Matt J: What is it we’re going to produce?
  * Envisioning a set of services running and waiting for requests.
  * Or a workflow platform where you submit steps to be executed.
  * **Workflow platform seems like where we’re headed.**
* Matt J: Cluster configuration can drastically affect the design of workflows
* Matt J: Dynamic workflow generation
  * Based on input data, generate a workflow DAG
  * Currently static from config file. Real world example:
    <https://github.com/PermafrostDiscoveryGateway/viz-workflow/blob/main/workflow_configs/ice-wedge-polygons.json>
* Matt J summary: Deal with transformations for existing PDG visualization
	challenges. Think we’re on the right track.


## Tool selection

https://qgreenland-net.github.io/evaluations/orchestrator/

* Considering:
	* Argo
    * How is storage managed? Dynamic PVCs?
		* Continued evaluation: What does the parallel version of one of our example workflows
			look like? Run on a tileset of N files
      * Experiment with drone imagery? <TODO: link>
    * What UX tools are there? Can we generate an SVG graph from a YAML?
	* Parsl
	* Ray
		* Promising for ML-specific stuff






## Implementation roadmap

NOTE: Pre-populated by Trey & Matt, but we didn't get to discussing it today.

Let’s break this into milestones! Brainstorm:

* End-to-end data test (simple case): take some data, apply transformations, and publish
	results as DataONE dataset
  * Implemented some workflows in Argo & Parsl; remaining tasks are publishing to DataONE
		and triggering automatically from GitHub events.
* Migrate QGreenland workflows to selected orchestrator
  * One existing workflow (arctic circle) successfully migrated programmatically to Argo
		YAML, ~20 others still need testing, ~200 more still need implementing.
* Implement big and complex processing case for Cesium 3D tiles using e.g., drone imagery
	data as input
* Implement community accessibility functionality, e.g. bots, checks, and other
	automations on GitHub
* ...?
* Build QGreenland using data transformed and published to DataONE using OGDC
* Extract QGreenland’s framework code to a “QAnywhere” library for compiling regional QGIS
	data projects



## What other decisions do we need to finalize in this meeting?


## What are the next decision points? Do we need a follow-up meeting?

* Decide on a workflow tech! Depends on action items.


## Action items

- [ ] Rushiraj & Matt: Pick 3 datasets (small serial, medium, large parallel), build workflows
			for them and _publish_ to same PVC the visualization app is using to read
			from (see Rushiraj’ PDG branch). Evaluate at the end of each step (small,
			medium, large). Medium: Hydrology Ice Basins; Large: drone imagery dataset (see
			notes from last architecture meeting)?.
	- [ ] Rushiraj: Work with ADC k8s admins to install Argo Workflows to “argo” namespace
- [x] Matt: Set up a new daily standup meeting (10 minutes) without Trey. Reach out if we need
			him!
