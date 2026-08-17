---
requirement_id: CUS-REV-REQ-033
title: Show or Hide Section Border
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to control the visibility of the Customer Review section border using the `style.showBorder` attribute.

## Acceptance Criteria
- [ ] The Customer Review section contains a `style.showBorder` attribute.
- [ ] The administrator can enable or disable the section border.
- [ ] When `showBorder` is `true`, the Mobile App displays a border around the Customer Review section.
- [ ] When `showBorder` is `false`, the Mobile App hides the border around the Customer Review section.
- [ ] The generated JSON reflects the configured `showBorder` value.
- [ ] Changing `showBorder` does not modify other Customer Review section style properties.