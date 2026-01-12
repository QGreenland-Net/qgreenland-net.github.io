---
title: "2026-01-12: Dev standup"
date: "2026-01-12"
---

## Participants

* Robyn
* Trey
* Rushiraj

## Discussion

- [name=Trey]
    - Continuing work on GSW presentation
    - Working on serving recipe outputs
        - Minio licencing issue / "maintenece mode": we need to think about an alternative artifact storage backend (or abandon use?). See: <https://github.com/minio/minio/issues/21714>
    - Still hoping to do a release this week, pending fixups w/ issues at ADC (mentioned by Rushiraj below).
    - Working on another project for a while this afternoon. Will plan to discuss options for minio/artifact storage in more depth Tuesday or Wed.
- [name=Robyn]
    - Working on #76 - hoping for a PR tomorrow
- [name=Rushiraj]
	- completed work on parallel exec for shell recipes
		- it still doesn't strictly follow the dir naming conventions for shell recipes
		- working with Alyona to generate a recipe for PDG's use case
		- next: make PR ready for review
		- next: same support for viz WF.
	- WIP Issues w ADC dev/prod K8s
		- Matt and Nick are working on some issues with the dev and prod cluster
			- cluster node
			- ceph-fs


## Action items

- [ ] Use checkboxes here!
