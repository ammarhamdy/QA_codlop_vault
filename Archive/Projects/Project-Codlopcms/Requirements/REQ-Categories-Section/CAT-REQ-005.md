---
requirement_id: CAT-REQ-005
title: "Assign Section Type"
priority: High
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

Each section shall carry a fixed `type` value of `category`, identifying it to the mobile renderer as a Categories block.

## Acceptance Criteria
- [ ] `type` is set to `category` automatically and is not editable by the admin.
- [ ] The mobile app uses `type` to route the JSON payload to the Categories rendering module.
