---
requirement_id: PROD-REQ-011
title: "Product Card Style Consistency Between Top-Level and Settings"
priority: Medium
status: Draft
epic_link: "Dynamic Product Section"
tags:
  - requirement
---

## Description
The `productCardStyle` value at the top level of the JSON and the `productCardStyle` value inside `settings` shall represent the same selected card style.

## Acceptance Criteria
- [ ] The Admin Panel writes the same selected card style to both the top-level `productCardStyle` field and `settings.productCardStyle` field.
- [ ] The mobile app does not render conflicting card styles if the two values differ (see Invalid Configuration Handling).
