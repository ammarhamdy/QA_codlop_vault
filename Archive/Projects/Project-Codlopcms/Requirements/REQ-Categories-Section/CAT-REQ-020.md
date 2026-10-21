---
requirement_id: CAT-REQ-020
title: "Toggle Price Display on Category Items"
priority: Medium
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

The Admin Panel shall allow the admin to toggle `showPrice` to control whether price information is displayed on individual category items (where applicable).

## Acceptance Criteria
- [ ] `showPrice` accepts boolean true/false.
- [ ] Price is only rendered when the resolved category source data includes a price value AND `showPrice` is true.
