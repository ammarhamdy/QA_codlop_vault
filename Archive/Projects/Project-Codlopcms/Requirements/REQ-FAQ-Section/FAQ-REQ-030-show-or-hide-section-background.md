---
requirement_id: FAQ-REQ-030
title: Show or Hide FAQ Section Background
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to control the visibility of the FAQ section background using the `style.showBackground` attribute.

## Acceptance Criteria
- [ ] The FAQ section contains a `style.showBackground` attribute.
- [ ] The administrator can enable or disable the FAQ section background.
- [ ] When `showBackground` is `true`, the Mobile App displays the configured `style.background` color for the FAQ section.
- [ ] When `showBackground` is `false`, the Mobile App hides the FAQ section background.
- [ ] Changing `showBackground` does not modify the configured `background` value.
- [ ] The generated JSON reflects the configured `showBackground` value.