---
requirement_id: FAQ-REQ-023
title: Configure FAQ Item Radius
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to configure the corner radius of individual FAQ items using the `style.itemRadius` attribute.

## Acceptance Criteria
- [ ] The FAQ section contains a `style.itemRadius` attribute.
- [ ] The administrator can configure the FAQ item corner radius.
- [ ] The configured item radius value is stored in the FAQ section configuration.
- [ ] The generated JSON contains the configured value in `style.itemRadius`.
- [ ] The Mobile App applies the configured radius to each FAQ item.
- [ ] Changing the FAQ item radius does not modify other FAQ section style properties.