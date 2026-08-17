---
requirement_id: CUS-REV-REQ-032
title: Show or Hide Section Background
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to control the visibility of the Customer Review section background using the `style.showBackground` attribute.

## Acceptance Criteria
- [ ] The Customer Review section contains a `style.showBackground` attribute.
- [ ] The administrator can enable or disable the section background.
- [ ] When `showBackground` is `true`, the Mobile App displays the configured `style.background` color for the Customer Review section.
- [ ] When `showBackground` is `false`, the Mobile App hides the Customer Review section background.
- [ ] Changing `showBackground` does not modify the configured `background` value.
- [ ] The generated JSON reflects the configured `showBackground` value.