---
requirement_id: FAQ-REQ-032
title: Configure Custom FAQ Title Color
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to configure whether a custom title color is used for the FAQ section through the `style.useCustomTitleColor` attribute and define the custom color using `style.titleColor`.

## Acceptance Criteria
- [ ] The FAQ section contains a `style.useCustomTitleColor` attribute.
- [ ] The administrator can enable or disable the use of a custom title color.
- [ ] When `useCustomTitleColor` is `true`, the Mobile App applies the configured `style.titleColor` to the FAQ section title.
- [ ] When `useCustomTitleColor` is `false`, the Mobile App does not apply `style.titleColor` as a custom title color.
- [ ] The configured `titleColor` value is preserved regardless of the `useCustomTitleColor` state.
- [ ] The generated JSON reflects the configured `useCustomTitleColor` value.