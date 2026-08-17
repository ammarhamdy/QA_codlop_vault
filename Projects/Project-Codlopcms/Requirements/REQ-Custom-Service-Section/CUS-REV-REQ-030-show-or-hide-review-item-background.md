---
requirement_id: CUS-REV-REQ-030
title: Show or Hide Review Item Background
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to control the visibility of the customer review item background using the `style.showItemBackground` attribute.

## Acceptance Criteria
- [ ] The Customer Review section contains a `style.showItemBackground` attribute.
- [ ] The administrator can enable or disable the review item background.
- [ ] When `showItemBackground` is `true`, the Mobile App displays the configured `style.itemBackground` color for each review item.
- [ ] When `showItemBackground` is `false`, the Mobile App hides the review item background.
- [ ] Changing `showItemBackground` does not modify the configured `itemBackground` value.
- [ ] The generated JSON reflects the configured `showItemBackground` value.