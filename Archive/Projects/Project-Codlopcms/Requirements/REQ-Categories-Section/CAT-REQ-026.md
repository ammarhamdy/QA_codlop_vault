---
requirement_id: CAT-REQ-026
title: "Support Multiple Category Source Types"
priority: Medium
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

The platform shall support at minimum two conceptual category sources: internal (platform-native) categories and third-party/external categories, as implied by `categoryType: third_party` and the `data-object` / `data-strings` distinction.

## Acceptance Criteria
- [ ] Internal category selections are represented in `data-object`.
- [ ] External/third-party category selections are represented in `data-strings`.
- [ ] Only one of `data-object` or `data-strings` is populated per section, consistent with the selected `categoryType`.
