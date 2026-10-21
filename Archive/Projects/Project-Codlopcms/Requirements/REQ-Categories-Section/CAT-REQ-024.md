---
requirement_id: CAT-REQ-024
title: "Select Category Source"
priority: High
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

The Admin Panel shall allow the admin to select a `categorySource` (e.g., `external_categories`) specifying the concrete data source system/endpoint from which category records are resolved.

## Acceptance Criteria
- [ ] Admin selects `categorySource` from a closed list of supported sources.
- [ ] Changing `categorySource` invalidates/clears any previously selected categories that are not valid for the new source (see Open Questions for confirmation).
