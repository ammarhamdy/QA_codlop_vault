---
requirement_id: CUS-REV-REQ-035
title: Support Customer Review Data Strings
priority: Low
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall support the `settings.data-strings` attribute within the Customer Review section configuration as an array for string-based customer review data.

## Acceptance Criteria
- [ ] The Customer Review section contains a `settings.data-strings` attribute.
- [ ] The `data-strings` attribute is represented as an array.
- [ ] The administrator can configure string values in the `data-strings` array when required.
- [ ] The generated JSON preserves the configured `data-strings` values.
- [ ] An empty `data-strings` array is supported.
- [ ] The Mobile App can process the `data-strings` attribute without preventing the Customer Review section from rendering.