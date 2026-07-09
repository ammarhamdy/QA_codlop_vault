---
requirement_id: PROD-REQ-032
title: "Validate Required Fields Before Publish"
priority: High
status: Draft
epic_link: "Dynamic Product Section"
tags:
  - requirement
---

## Description
The Admin Panel shall validate that all required fields (`section_key`, `productCardStyle`, `productSource`, and source-dependent fields) are present and valid before allowing the section to be published.

## Acceptance Criteria
- [ ] Publishing is blocked if any required field is missing or invalid.
- [ ] A clear validation error is shown to the admin identifying the missing/invalid field.
