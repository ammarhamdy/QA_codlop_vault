---
tc_id: TC-013
title: Verify Duplicate Admin Prevention
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
|                           |            |

# Preconditions
Admin is logged in and on Admins page
# Steps
1. Click Add Admin.  
2. Enter valid data using an email that already exists in the system.  
3. Click Add.
# Expected Result
The system prevents creating a duplicate admin account and displays an appropriate validation message indicating that the email is already registered.
# Notes

# Attachments
