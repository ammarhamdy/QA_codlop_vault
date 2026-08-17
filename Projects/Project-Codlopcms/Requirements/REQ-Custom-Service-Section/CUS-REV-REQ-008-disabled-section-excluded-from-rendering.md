---
requirement_id: CUS-REV-REQ-008
title: Exclude Disabled Section from Rendering
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The Mobile App shall exclude the Customer Review section from rendering when its `enabled` attribute is set to `false`.

## Acceptance Criteria
- [ ] When the Customer Review section has `enabled: false`, the Mobile App does not render the section.
- [ ] The Customer Review section title is not displayed when the section is disabled.
- [ ] Customer review items are not displayed when the section is disabled.
- [ ] Disabling the section does not remove its existing configuration or review data.
- [ ] When the section is re-enabled with `enabled: true`, the configured Customer Review section becomes eligible for rendering again.