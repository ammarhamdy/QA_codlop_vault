---
requirement_id: CAT-REQ-029
title: "Category Identifier Format"
priority: Medium
status: Draft
epic_link: "Dynamic Categories Section"
tags:
  - requirement
---

## Description

Selected external categories shall be represented in `data-strings` as an array of string identifiers referencing category records in the external category source.

## Acceptance Criteria
- [ ] Each entry in `data-strings` is a non-empty string.
- [ ] Duplicate identifiers within `data-strings` are prevented at save time.
