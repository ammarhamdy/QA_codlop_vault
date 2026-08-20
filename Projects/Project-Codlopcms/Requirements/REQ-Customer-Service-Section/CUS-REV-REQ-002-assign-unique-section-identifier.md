---
requirement_id: CUS-REV-REQ-002
title: Assign a Unique Section Identifier
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall automatically assign a unique identifier to each Customer Review section using the `id` attribute. The identifier shall uniquely distinguish the Customer Review section from other sections in the application configuration.

## Acceptance Criteria
- [ ] Each Customer Review section contains an `id` attribute.
- [ ] The `id` value is unique for each Customer Review section.
- [ ] Two different Customer Review sections cannot have the same `id`.
- [ ] The assigned identifier remains associated with the Customer Review section after saving.
- [ ] The `id` is included in the JSON configuration provided to the Mobile App.