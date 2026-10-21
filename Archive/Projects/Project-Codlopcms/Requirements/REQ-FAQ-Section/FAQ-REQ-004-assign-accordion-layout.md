---
requirement_id: FAQ-REQ-004
title: Assign Accordion Layout
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall assign the `accordion` value to the `layout` attribute of every FAQ section. The layout determines that the FAQ items are rendered using an accordion interface in the mobile application.

## Acceptance Criteria
- [ ] Every FAQ section contains a `layout` attribute.
- [ ] The `layout` value for an FAQ section is always `accordion`.
- [ ] The administrator cannot assign an unsupported layout to an FAQ section.
- [ ] The generated JSON contains `"layout": "accordion"` for every FAQ section.
- [ ] The Mobile App renders the FAQ section using the accordion layout.