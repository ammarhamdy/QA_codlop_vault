---
tc_id: TC-PROD-CRE-006
title: Verify Multiple Product Sections Can Be Created on the Same Home Screen
priority: Medium
status: Ready
type: Functional
linked_requirement: PROD-REQ-001, PROD-REQ-002
tags:
  - test-case
  - creation
  - multiple-sections
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section 1 Title | Featured |
| Section 1 Layout | grid_one |
| Section 2 Title | On Sale |
| Section 2 Layout | horizontal |
| Section 3 Title | Best Sellers |
| Section 3 Layout | grid_two |

# Preconditions
- Admin is logged into the Admin Panel.

# Steps
1. Create three separate Product Sections with different titles and layouts.
2. Verify each section receives a unique `id`.
3. Save all sections.
4. View the Home screen section list.

# Expected Result
- All three Product Sections are created successfully.
- Each has a unique `id`.
- The sections are listed in the order they were created (or as reordered by the admin).
- No collision or error occurs from having multiple product sections.

# Notes

# Attachments
