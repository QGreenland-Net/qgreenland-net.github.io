---
title: "Requirements"
---

[See related GitHub issue](https://github.com/QGreenland-Net/.github/issues/31)


## Data transformations

* Extract from archive (e.g. `tar.gz`)
* Change data format (e.g. CSV -> GeoPackage), e.g.:
  * `gdal_translate`
  * `ogr2ogr`
* Reproject
* Subset
* Resample (down/upsample or re-grid)
* File-level metadata changes, e.g.:
	* Assignment or correction of projection
	* `gdal_edit` operations
* Raster math, e.g.:
	* `gdal_calc.py`
* Compression, e.g.:
	* Apply `DEFLATE` compression to geotiff
* Build overviews, e.g.:
	* `gdaladdo`
* Vector geometry operations
	* Make valid
  * Simplify (less points)
  * Segmentize (more points)
	* Filtering (e.g. SQL `WHERE`)
	* Changing / adding attributes (e.g. calculating a `label` attribute from a
		`value` and `unit` attribute)
* Generating / combining data
	* Contourize (raster data -> vector contours)
  * Climatological mean or other data-reductions
	* Enriching datasets / data fusion / data integration (e.g. combining
		attributes from at least 2 vector data sources)
* Tiling (large dataset -> many chunks)
* Mosaicing (many chunks -> unified dataset)


## Service-y stuff

* User submitted recipes that trigger a workflow that results in downloadable
	data file(s) archived as a new DataONE dataset

  :::{.callout-important}
  We've been making the assumption that we'd be archiving our outputs, even if the
  transformation is "minor", on DataONE. Is this a valid assumption?

  This would enable decoupling of QGreenland from the data ingestion processes. If we
  don't archive our outputs, we may need to run pipelines which store temporary outputs
  (e.g. couple day lifetime) in preparation for every QGreenland build (requires some
  coupling, even if only at the CI layer).
  :::

* Creation of [3D Tiles](https://www.ogc.org/standard/3dtiles/) for geospatial
	datasets to enable fast viz in portal cesium app
