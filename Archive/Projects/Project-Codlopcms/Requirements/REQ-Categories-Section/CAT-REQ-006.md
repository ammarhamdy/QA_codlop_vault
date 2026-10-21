---
requirement_id: CAT-REQ-006
title: "Section Key Determines Rendering Variant"
priority: Medium
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

The `section_key` shall identify the specific rendering variant/template of the Categories section (e.g., `type_two`), distinct from the general `layout` field.

## Acceptance Criteria
- [ ] `section_key` is set based on the layout/template chosen by the admin.
- [ ] `section_key` and `layout` remain consistent with one another for a given section (no mismatched combinations).
