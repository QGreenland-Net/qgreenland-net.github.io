---
title: "2025-10-21: Dev standup"
date: "2025-10-21"
---

## Participants

* Trey
* Robyn
* Rushiraj



## Discussion

- Robyn
    - Implementing poster changes
    - need to push my changes for the GHCR on ogdc-helm and open a PR
    - reviewed Treys ogdc-runner PR (merged)
    - reviewing twilas documents

- Rushiraj
    - working on cleanup crds and finalizers on ogdc-helm uninstall.
    - was running into issues with workflows being stuck
        -  since its not working as is we may need to add removing finalizers in our `uninstall` - note that this helps us with development.
        -  will add that and merge the PR
    - Ready for deployment to PROD after that is merged.
        -    need to reach out to some people at ADC to get ball rolling on that
    - Out of office tomorrow and thursday (oct 21-22)

    - All hands discussion tomorrow - want to share portal tweaks for Rushiraj if desired.
    - 3D tiles still getting rendered
    - other changes are in
    - Highlight:
        - Theme updates: Dark theme for imagery viewer
        - Attribution to original datasets: updating references to datasets
        - Symbology: Looked at implementing filter based on vector attributes. Can base e.g., color of vector features based on attribute.

- Trey
    - Initial release of the `ogdc-runner` to PyPi and GHCR.
    - Working on v0.2.0 release


## Action items

- [x] schedule a planning/big picture call for next week/after prod release (extended monday standup)
    - [ ] include project board maintenance as part of this
