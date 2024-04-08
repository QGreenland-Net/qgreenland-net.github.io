---
title: "2024-04-08: Dev standup"
date: "2024-04-08"
---


## How do we get data from/on DataONE?

* Can use DataONE API to read.
* The ([DataONE Investigator's Toolkit (ITK)](https://releases.dataone.org/online/api-documentation-v2.0.1/design/itk-overview.html))
  allows retrieving datasets.
    * Also has tools for publishing & modifying datasets.
* DataONE does versioning using a "prior version" link in new dataset versions.
  The old one stays ~forever.
  UI always takes you to most recent, but old ones can still be cited.


### Big datasets

* Had some issues before fetching with HTTP Range-Get requests.
* "Small" is up to a few gigs.


## Misc

* Better Slack persistence? GitHub Actions can help automate some backup
	process, then deploying backed-up data to a website?
* https://wholetale.org/ : What can we learn from this project?


## Milestone brainstorming

### Recipe management on GitHub

What do recipes look like?
How are they organized on GitHub?
How do we ensure recipes are compliant and stay compliant as recipe formats change over time?
How do we trigger jobs on ADC infra?
How often are recipes executed?
Do we want recurring execution? How does that work? Some YAML config?
Do we want streaming?

One repository containing many recipes or one repository for each recipe?
Can we delay some complexity by starting monolith?
It's probably easier to migrate from monolith -> many repos later if we want.

...?


#### Artifacts

* Python program?
* GitHub Actions?


### Recipe running on ADC infrastructure

What back-end (Apache Spark, Google DataFlow, ???) do we use to run recipes?
How does intermediate data get managed while running recipes?

Final output can be anything for the purpose of this milestone.
We'll answer data management questions in the data management milestone.


#### Artifacts

* Kubernetes config(s) (Helm chart)?
* Python program or shell script to encapsulate things in common for all recipes?


### Complex program to create a simple interface for simple recipes

For example folling the `repo2docker` model, users could specify a `recipe.sh` containing simple GDAL/OGR commands that would get turned in to a real Beam recipe by some program.

Include documentation on constraints and mechanisms behind the recipe generation.


#### Artifacts

* Python program


### Data management at ADC

* How else can we map the data into the runner?
  Matthew Brooke at ADC can probably help.
  Can they join us on a call?
* How much  output and intermediate data space do we have? What kind of cleanup do we want/need to do?
    * Rushiraj will look in to the docs for more details.
* How does the data get archived at ADC?
* How do we write good provenance to the metadata?
    * Good support in Ecological Markup Language (EML).
      Can link the scripts/code that are used to generate outputs to the data.
      Also includes a simple UI for visualizing provenance.


#### Artifacts

* Discussion notes from Matthew Brooke
* Improvements to "how to run recipes on ADC infrastructure", e.g. Helm charts.
