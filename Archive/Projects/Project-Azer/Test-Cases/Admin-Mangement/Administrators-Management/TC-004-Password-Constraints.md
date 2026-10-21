---
tc_id: TC-004
title: Verify Password Validation Rules
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
| Field                     | Value                                    |
| ------------------------- | ---------------------------------------- |
| Administrator Credentials | Email/Pass                               |
| Pass                      | Aa@123 (less than 8 chars)               |
| Pass                      | aa@12345 (missing uppercase/Lower cases) |
| Pass                      | Aa@aaaaa (missing number)                |
| Pass                      | Aa123456 (missing special character)     |


# Preconditions
Admin is logged in and on Admins page
# Steps
1. Click Add Admin
2. Enter each invalid password separately.
3. Fill remaining required fields with valid data
4. Click Add.
# Expected Result
System prevents submission and displays the appropriate validation message according to the violated password rule.
# Notes

# Attachments
