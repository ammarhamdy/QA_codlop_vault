---
requirement_id: PROD-REQ-003
title: "Assign Fixed Section Type"
priority: High
status: Draft
epic_link: "Dynamic Product Section"
tags:
  - requirement
---

## Description
Each Product Section shall carry a fixed `type` value of `product`, identifying it to the mobile renderer.

## Acceptance Criteria
- [ ] `type` is set to `product` automatically and is not editable by the admin.
- [ ] The mobile app uses `type` to route the JSON payload to the Product Section rendering module.
