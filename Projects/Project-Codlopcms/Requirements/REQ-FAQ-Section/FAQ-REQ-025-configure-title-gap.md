---
requirement_id: FAQ-REQ-025
title: Configure FAQ Title Gap
priority: Medium
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall allow the administrator to configure the spacing between the FAQ section title and its content using the `style.titleGap` attribute.

## Acceptance Criteria
- [ ] The FAQ section contains a `style.titleGap` attribute.
- [ ] The administrator can configure the title gap value.
- [ ] The configured title gap value is stored in the FAQ section configuration.
- [ ] The generated JSON contains the configured value in `style.titleGap`.
- [ ] The Mobile App applies the configured title gap between the section title and FAQ content.
- [ ] Changing the title gap does not modify other FAQ section style properties.