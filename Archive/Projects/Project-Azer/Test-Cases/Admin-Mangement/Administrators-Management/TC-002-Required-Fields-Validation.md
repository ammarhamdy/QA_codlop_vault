---
tc_id: TC-002
title: Verify mandatory fields validation while adding Admin
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Administrators Management
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
| Name                      | (Empty)    |
| Email                     | (Empty)    |
| Password                  | (Empty)    |
| Confirm password          | (Empty)    |

# Preconditions
Admin is logged in and on Admins page
# Steps
1. Click Add Admin
2.  Leave mandatory fields empty.  
3. Click Add
# Expected Result
-For each empty required field, an error message (e.g., "Name is required", "Please Enter email") should be displayed.
- The form submission should be prevented.
# Notes

# Attachments
