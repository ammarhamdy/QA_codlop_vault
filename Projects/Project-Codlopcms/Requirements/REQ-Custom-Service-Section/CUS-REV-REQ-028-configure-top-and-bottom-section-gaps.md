---
requirement_id: CUS-REV-REQ-028
title: Configure Top and Bottom Section Gaps
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to configure the spacing above and below the Customer Review section using the `style.gapTop` and `style.gapBottom` attributes.

## Acceptance Criteria
- [ ] The Customer Review section contains a `style.gapTop` attribute.
- [ ] The Customer Review section contains a `style.gapBottom` attribute.
- [ ] The administrator can configure the top gap value.
- [ ] The administrator can configure the bottom gap value.
- [ ] The configured top gap value is stored in `style.gapTop`.
- [ ] The configured bottom gap value is stored in `style.gapBottom`.
- [ ] The generated JSON contains the configured `gapTop` and `gapBottom` values.
- [ ] The Mobile App applies `gapTop` as the spacing above the Customer Review section.
- [ ] The Mobile App applies `gapBottom` as the spacing below the Customer Review section.
- [ ] Changing either gap does not modify the other gap or other Customer Review section style properties.