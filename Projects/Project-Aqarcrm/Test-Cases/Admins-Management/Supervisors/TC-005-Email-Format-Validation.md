---
tc_id: TC-Sup-005
title: Verify email format validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-013-Admins-Management
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on the Add Supervisor page.
# Steps
1. Enter an email address in an invalid format (e.g., `test`, `test@`, `test.com`).  
2. Click **Save**.  
3. Enter a valid email address (e.g., `test@example.com`).  
4. Click **Save**.
# Expected Result
-The system rejects email addresses with an invalid format, displays the appropriate validation message, and accepts a valid email address.
# Notes

# Attachments
