---
requirement_id: PROD-REQ-023
title: "Toggle Price Display"
priority: Medium
status: Draft
epic_link: "Dynamic Product Section"
tags:
  - requirement
---

## Description
The Admin Panel shall allow the admin to toggle `showPrice` to control whether price information is displayed on individual product cards.

## Acceptance Criteria
- [ ] `showPrice` accepts boolean true/false.
- [ ] Price is only rendered when the resolved product data includes a price value AND `showPrice` is true.
