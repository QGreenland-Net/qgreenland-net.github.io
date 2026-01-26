---
title: "2026-01-26: Dev standup"
date: "2026-01-26"
---

## Participants

* Robyn
* Trey
* Rushiraj


## Discussion

- [name=Rushiraj] Updates
    - [WIP] S3 storage access PR
        - some issues with testing, may be issues with my local config?
    - Viz workflow integration with parallel interface
        - resolving existing issues that is limiting me to run this on OGDC
            - 3dtiles docker image build for ARM/aarchx64
            - OOM issues with rasterization ([issue](https://github.com/PermafrostDiscoveryGateway/viz-workflow/issues/73))
    - Additional ADC updates
        - viz-workflow - support for H3 cells as summaries while browsing the map
        - Matthew / Matt working on testing some ingress changes (see: [issue](https://github.com/DataONEorg/k8s-cluster/issues/63))
            - dev k8s test successful today
            - prod k8s scheduled today -- 6:00 PM and 6:15 PM PST
                - service disruption expected, ~5 minutes
- [name=Trey]
    - Wrapping up work on GSW presentation today.
- [name=Robyn]
    - made changes to #147 per our discussion last thursday. Need to do a little bit more testing before ready for additional review.
    - Will be adding tests to this PR
    - TODO: Need to look at open PR's
    - TODO: create issue to document hierarchy structure (trey and matts comments on PR)
