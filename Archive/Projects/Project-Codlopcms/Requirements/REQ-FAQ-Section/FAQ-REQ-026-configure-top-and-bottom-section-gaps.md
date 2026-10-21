---
requirement_id: FAQ-REQ-026
title: Configure FAQ Section Top and Bottom Gaps
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to configure the spacing above and below the FAQ section using the `style.gapTop` and `style.gapBottom` attributes.

## Acceptance Criteria
- [ ] The FAQ section contains a `style.gapTop` attribute.
- [ ] The FAQ section contains a `style.gapBottom` attribute.
- [ ] The administrator can configure the top gap value.
- [ ] The administrator can configure the bottom gap value.
- [ ] The configured top gap value is stored in `style.gapTop`.
- [ ] The configured bottom gap value is stored in `style.gapBottom`.
- [ ] The generated JSON contains the configured `gapTop` and `gapBottom` values.
- [ ] The Mobile App applies `gapTop` as the spacing above the FAQ section.
- [ ] The Mobile App applies `gapBottom` as the spacing below the FAQ section.
- [ ] Changing either gap does not modify the other gap or other FAQ section style properties.