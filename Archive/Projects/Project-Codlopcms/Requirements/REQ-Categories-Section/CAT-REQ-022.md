---
requirement_id: CAT-REQ-022
title: "Column Count Constrained by Settings"
priority: Medium
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

The `columns` setting shall determine the number of categories rendered per row for grid-compatible layouts, as defined in CAT-REQ-008.

## Acceptance Criteria
- [ ] `columns` is validated as an integer within the supported range at save time.
- [ ] The mobile app uses `columns` to compute the grid arrangement at render time.
