---
tc_id: TC-005
title: Verify password and confirm password must match
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
| Confirm password          | Fa12345@/Fa12345& |

# Preconditions
Admin is logged in and on Admins page
# Steps
1. Click Add Admin
2.  Fill pass & confirm pass with same data &Different data .
   3-Fill other Fields with valid data  
3. Click Add
# Expected Result
-Admin Added successfully when pass& confirm pass are same
-Form is not submitted and a validation message is displayed when Password and Confirm Password do not match.
# Notes

# Attachments
