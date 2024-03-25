---
title: "QGreenland-Net"
---

QGreenland-Net is a collaboration between the
[QGreenland](https://qgreenland.org) team and the [NSF Arctic Data
Center](http://arctic.icecoredata.org/). QGreenland-Net seeks to develop an
ADC-maintained Open Geospatial Data Cloud (OGDC) to improve discoverability,
accessibility, and interoperability for geospatial data from the
[DataONE](https://www.dataone.org/) federation of data repositories. Using these
cloud resources, researchers and educators will be able to identify geospatial
data of interest from the network of repositories, make data transformations,
and then share, analyze, and visualize those data via QGreenland or other
geospatial software.


```{mermaid}
flowchart LR
    ADC[ADC/DataONE] -->|Archived data and metadata| OGDC[OGDC </br>*Fetch data</br>*Extract var</br>*Reproject</br>*Subset</br>*Write to standard geodata format]
    OGDC --> QGR[QGreenland Data Package]
    OGDC --> |Transformed data + provenance/metadata| WEB_PORTAL[ADC QGreenland Data Portal]
    OGDC --> OTHER[Independent users/researchers/GIS client]
```
