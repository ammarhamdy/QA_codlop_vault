---
requirement_id: CAT-REQ-032
title: "Order Preservation on Partial Failure"
priority: Medium
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

If one or more configured category identifiers fail to resolve at render time, the relative order of the remaining, successfully resolved categories shall be preserved.

## Acceptance Criteria
- [ ] Skipped/failed categories do not shift the intended relative position of successfully resolved categories.
- [ ] No placeholder/empty slot is rendered for failed categories unless explicitly specified otherwise (see Open Questions).
