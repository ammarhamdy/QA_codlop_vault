---
requirement_id: CAT-REQ-004
title: "Configure Section Title"
priority: High
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

The Admin Panel shall allow the admin to set a display `title` for the Categories section, including support for non-Latin scripts (e.g., Arabic).

## Acceptance Criteria
- [ ] Admin can enter free text as the section title.
- [ ] Title field supports UTF-8 / RTL text (e.g., "التصنيفات").
- [ ] Empty title is only permitted when `showTitle` is set to false (see CAT-REQ-016).
