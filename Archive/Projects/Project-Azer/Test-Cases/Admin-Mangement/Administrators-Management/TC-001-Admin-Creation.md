---
tc_id: TC-001
title: Verify admin can create New admins with valid data
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
| Field                     | Value             |
| ------------------------- | ----------------- |
| Administrator Credentials | Email/Pass        |
| Name                      | Fatma             |
| Email                     | fatma55@gmail.com |
| Password                  | Fa12345@          |
| Confirm password          | Fa12345@          |

# Preconditions
Admin is logged in and on Admins page
# Steps
1. Click Add Admin
2. Fill all fields
3. Click Add
# Expected Result
Admin is created successfully and appears in the list
# Notes

# Attachments
