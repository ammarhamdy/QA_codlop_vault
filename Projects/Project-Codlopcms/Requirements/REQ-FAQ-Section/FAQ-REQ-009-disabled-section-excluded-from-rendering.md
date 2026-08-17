---
requirement_id: FAQ-REQ-009
title: Exclude Disabled FAQ Section from Rendering
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The Mobile App shall exclude the FAQ section from rendering when its `enabled` attribute is set to `false`.

## Acceptance Criteria
- [ ] When the FAQ section has `enabled: false`, the Mobile App does not render the FAQ section.
- [ ] The FAQ section title is not displayed when the section is disabled.
- [ ] FAQ items are not displayed when the section is disabled.
- [ ] Disabling the section does not remove its existing configuration or FAQ data.
- [ ] When the section is re-enabled with `enabled: true`, the configured FAQ section becomes eligible for rendering again.