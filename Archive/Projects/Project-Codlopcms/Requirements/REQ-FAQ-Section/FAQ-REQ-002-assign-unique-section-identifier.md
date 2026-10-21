---
requirement_id: FAQ-REQ-002
title: Assign a Unique Section Identifier
priority: High
status: Draft
epic_link: ""
tags:
  - requirement
---

## Description
The App Builder shall automatically assign a unique identifier to each FAQ section using the `id` attribute. The identifier shall uniquely distinguish the FAQ section from other sections in the application configuration.

## Acceptance Criteria
- [ ] Each created FAQ section has an `id` attribute.
- [ ] The `id` value is unique for each FAQ section.
- [ ] Two different FAQ sections cannot have the same `id`.
- [ ] The assigned identifier remains associated with the FAQ section after saving.
- [ ] The `id` is included in the JSON configuration provided to the mobile application.