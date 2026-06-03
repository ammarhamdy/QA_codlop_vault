---
tc_id: TC-002
title: Verify mandatory fields validation while adding product
priority:
  - High
status:
  - Draft
type: Negative
linked_requirement: US-006
tags:
  - test-case
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
An administrator is logged into the admin panel and is viewing products
# Steps
1. Click Add Product
2.  Leave mandatory fields empty.  
3. Click Save
# Expected Result
  -For each empty required field, an error message (e.g., "Name is required", "Please Enter Brief summary") should be displayed.
- The form submission should be prevented.
# Notes

# Attachments
