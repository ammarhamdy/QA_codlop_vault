---
tc_id: TC-CAT-CRE-006
title: Verify admin can add a Categories section of type category
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-001
tags:
  - test-case
  - admin-panel
  - creation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Desired section type | "category" |

# Preconditions
- Admin Panel is open on the Home screen configuration page.

# Steps
1. Click "Add New Section".
2. From the section type list, choose "Categories" (or equivalent type `category`).
3. Confirm the section is added to the Home screen layout.

# Expected Result
- A new section of type `category` is successfully added to the Home screen section list.
- The section type is displayed as "category" (or a human-readable equivalent) and is read-only.

# Notes
# Attachments
