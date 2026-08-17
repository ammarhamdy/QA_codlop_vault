---
requirement_id: CUS-REV-REQ-006
title: Show or Hide Section Title
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to control the visibility of the Customer Review section title using the `settings.showTitle` attribute.

## Acceptance Criteria
- [ ] The Customer Review section contains the `settings.showTitle` attribute.
- [ ] The administrator can set `showTitle` to `true` or `false`.
- [ ] When `showTitle` is `true`, the Mobile App displays the configured section title.
- [ ] When `showTitle` is `false`, the Mobile App does not display the section title.
- [ ] Changing `showTitle` does not remove or modify the configured `title` value.
- [ ] The generated JSON reflects the configured `showTitle` value.