---
requirement_id: CAT-REQ-009
title: "Layout-Settings Compatibility"
priority: Medium
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

The Admin Panel shall only expose style/settings fields relevant to the selected `layout`, hiding or disabling fields not applicable to that layout (e.g., `showPrice` may be irrelevant to a non-grid layout).

## Acceptance Criteria
- [ ] UI dynamically adapts visible configuration fields based on the chosen layout.
- [ ] Fields not applicable to a layout are excluded from, or nulled in, the generated JSON.
