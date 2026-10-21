---
requirement_id: CAT-REQ-037
title: "JSON Reflects Latest Saved Configuration"
priority: High
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

The generated JSON exposed to the mobile application shall always reflect the most recently saved/published configuration in the Admin Panel.

## Acceptance Criteria
- [ ] Saving a change in the Admin Panel updates the JSON available to the mobile app.
- [ ] No manual publish step is silently skipped (or, if a separate publish action exists, changes are not reflected until that action is taken — see Open Questions).
