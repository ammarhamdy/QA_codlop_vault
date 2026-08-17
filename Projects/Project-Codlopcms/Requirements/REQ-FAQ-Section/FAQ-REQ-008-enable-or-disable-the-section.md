---
requirement_id: FAQ-REQ-008
title: Enable or Disable FAQ Section
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to control whether the FAQ section is enabled or disabled using the `enabled` attribute.

## Acceptance Criteria
- [ ] The FAQ section contains an `enabled` attribute.
- [ ] The administrator can enable the FAQ section.
- [ ] When `enabled` is set to `true`, the FAQ section is eligible for rendering in the Mobile App.
- [ ] The administrator can disable the FAQ section.
- [ ] When `enabled` is set to `false`, the FAQ section is not rendered in the Mobile App.
- [ ] The generated JSON reflects the configured `enabled` value.