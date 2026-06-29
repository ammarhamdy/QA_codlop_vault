---
tc_id: TC-Login-014
title: Verify email field when left empty
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-001-Bahrqan-Authentication
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Email | empty |
|       |       |

# Preconditions
-User is on the Login screen.
# Steps
1. Leave the email field empty.  
2. Click Send OTP.
# Expected Result
-A validation message is displayed indicating that the email field is required.
# Notes

# Attachments
