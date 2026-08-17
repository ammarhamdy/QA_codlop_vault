---
requirement_id: CUS-REV-REQ-025
title: Configure Review Item Radius
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to configure the corner radius of individual customer review items using the `style.itemRadius` attribute.

## Acceptance Criteria
- [ ] The Customer Review section contains a `style.itemRadius` attribute.
- [ ] The administrator can configure the review item corner radius.
- [ ] The configured item radius value is stored in the section configuration.
- [ ] The generated JSON contains the configured value in `style.itemRadius`.
- [ ] The Mobile App applies the configured radius to each customer review item.
- [ ] Changing the review item radius does not modify other Customer Review section style properties.