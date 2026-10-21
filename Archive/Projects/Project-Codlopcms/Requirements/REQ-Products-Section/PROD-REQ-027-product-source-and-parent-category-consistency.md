---
requirement_id: PROD-REQ-027
title: "Product Source and Parent Category Consistency"
priority: Medium
status: Draft
epic_link: "Dynamic Product Section"
tags:
  - requirement
---

## Description
The combination of `productSource` and `parentCategoryId` shall be validated for consistency before the section can be saved/published.

## Acceptance Criteria
- [ ] The Admin Panel requires `parentCategoryId` to be non-null when `productSource` is category-based.
- [ ] The Admin Panel requires `parentCategoryId` to be `null` when `productSource` is `selected_products`.
