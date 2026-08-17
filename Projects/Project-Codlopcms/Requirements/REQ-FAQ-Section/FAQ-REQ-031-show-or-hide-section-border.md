---
requirement_id: FAQ-REQ-031
title: Show or Hide FAQ Section Border
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to control the visibility of the FAQ section border using the `style.showBorder` attribute.

## Acceptance Criteria
- [ ] The FAQ section contains a `style.showBorder` attribute.
- [ ] The administrator can enable or disable the FAQ section border.
- [ ] When `showBorder` is `true`, the Mobile App displays the border around the FAQ section.
- [ ] When `showBorder` is `false`, the Mobile App hides the border around the FAQ section.
- [ ] The generated JSON reflects the configured `showBorder` value.
- [ ] Changing `showBorder` does not modify other FAQ section style properties.