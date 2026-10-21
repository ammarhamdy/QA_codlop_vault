---
requirement_id: FAQ-REQ-003
title: Assign Fixed Section Type
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall assign the fixed value `faq` to the `type` attribute of every FAQ section. 
The `type` value identifies the section as an FAQ component and determines how the mobile application interprets and renders the section.

## Acceptance Criteria
- [ ] Every FAQ section contains a `type` attribute.
- [ ] The `type` value for an FAQ section is always `faq`.
- [ ] The administrator cannot change the `type` value to another section type.
- [ ] The generated JSON contains `"type": "faq"` for every FAQ section.
- [ ] The Mobile App uses the `type` value to identify the section as an FAQ component.