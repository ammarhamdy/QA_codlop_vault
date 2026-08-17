---
requirement_id: FAQ-REQ-007
title: Show or Hide FAQ Section Title
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to control the visibility of the FAQ section title using the `settings.showTitle` attribute.

## Acceptance Criteria
- [ ] The FAQ section contains the `settings.showTitle` attribute.
- [ ] When `showTitle` is set to `true`, the Mobile App displays the configured FAQ section title.
- [ ] When `showTitle` is set to `false`, the Mobile App does not display the FAQ section title.
- [ ] Changing `showTitle` does not remove or modify the configured `title` value.
- [ ] The generated JSON reflects the configured `showTitle` value.