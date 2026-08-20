---
requirement_id: CUS-REV-REQ-031
title: Show or Hide Review Item Border
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to control the visibility of the border around individual customer review items using the `style.showItemBorder` attribute.

## Acceptance Criteria
- [ ] The Customer Review section contains a `style.showItemBorder` attribute.
- [ ] The administrator can enable or disable the review item border.
- [ ] When `showItemBorder` is `true`, the Mobile App displays a border around each customer review item.
- [ ] When `showItemBorder` is `false`, the Mobile App hides the border around each customer review item.
- [ ] The generated JSON reflects the configured `showItemBorder` value.
- [ ] Changing `showItemBorder` does not modify other customer review item style properties.