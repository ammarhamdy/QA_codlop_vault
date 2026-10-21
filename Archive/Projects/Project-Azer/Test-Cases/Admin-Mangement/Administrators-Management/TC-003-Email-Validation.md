---
tc_id: TC-003
title: Verify Admin Creation with invalid email Format
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
| Field                     | Value       |
| ------------------------- | ----------- |
| Administrator Credentials | Email/Pass  |
| Name                      | Fatma       |
| Email                     | fatma@gmait |
| Password                  | Fa12345@    |
| Confirm password          | Fa12345@    |

# Preconditions
Admin is logged in and on Admins page
# Steps
1. Click Add Admin
2.  Fill Email with invalid format & other Fields with valid data.  
3. Click Add
# Expected Result
Validation message indicates invalid email format
# Notes

# Attachments
