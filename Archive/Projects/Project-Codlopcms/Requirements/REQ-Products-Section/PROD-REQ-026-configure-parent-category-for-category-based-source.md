---
requirement_id: PROD-REQ-026
title: "Configure Parent Category for Category-Based Source"
priority: Medium
status: Draft
epic_link: "Dynamic Product Section"
tags:
  - requirement
---

## Description
When `productSource` refers to a category-based product list, the Admin Panel shall allow the admin to select a `parentCategoryId` identifying the source category.

## Acceptance Criteria
- [ ] `parentCategoryId` accepts a valid category identifier or `null`.
- [ ] `parentCategoryId` is only required/editable when `productSource` is category-based.
