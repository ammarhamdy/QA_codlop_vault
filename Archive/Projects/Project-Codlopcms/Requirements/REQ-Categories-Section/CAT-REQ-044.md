---
requirement_id: CAT-REQ-044
title: "Render Categories in Configured Order"
priority: High
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

The mobile application shall render resolved categories in the exact order specified by the `data-strings`/`data-object` array.

## Acceptance Criteria
- [ ] Rendered order matches array order for all successfully resolved categories.
- [ ] Order is not re-sorted client-side by any other criteria (e.g., alphabetical) unless explicitly configured.
