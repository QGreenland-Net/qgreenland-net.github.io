---
title: "How-tos"
# TODO:
# listing:
#   type: "table"
#   categories: true
#   fields:
#     - "title"
#     - "date"
#   sort:
#     - "date desc"
---

## How to share a calendar across organizations

### NSIDC -> ADC

In the Outlook web view:

* Settings (cog wheel in upper right of outlook)
* -> Calendar
* -> Shared calendars
* -> Publish a calendar"
    * You can set the "can view when I'm busy" permissions if you'd like to share only
      availability, not meeting titles.


## How to configure Rancher Desktop

* After installation, you may need to set the VM resource limits higher.
    * The defaults were too low for some deployments and we bumped to 6 CPUs & 8+ GB
      memory in response.
