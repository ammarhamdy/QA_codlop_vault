---
requirement_id: CAT-REQ-012
title: "Configure Corner Radius and Spacing"
priority: Medium
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

The Admin Panel shall allow configuration of numeric spacing/geometry values: `radius`, `padding`, `itemRadius`, `titleGap`, `gapTop`, and `gapBottom`.

## Acceptance Criteria
- [ ] Each field accepts a non-negative numeric value.
- [ ] The Admin Panel enforces a sane maximum per field to prevent layout-breaking values.
- [ ] Values are persisted in density-independent units consistent with mobile rendering expectations.
