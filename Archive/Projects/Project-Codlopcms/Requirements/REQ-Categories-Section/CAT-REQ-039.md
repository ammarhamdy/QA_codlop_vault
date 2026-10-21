---
requirement_id: CAT-REQ-039
title: "Generic Rendering Without Hardcoded Layouts"
priority: High
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

The mobile application shall render the Categories section purely by interpreting the JSON configuration, without hardcoded layout-specific business logic tied to a single Admin Panel configuration.

## Acceptance Criteria
- [ ] Adding a new supported `layout` value does not require hardcoding data specific to any one merchant/tenant configuration.
- [ ] Rendering logic keys off `layout`/`section_key` to select the correct generic template.
