---
tc_id: TC-Sup-006
title: Verify adding a supervisor with an existing email address
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-013-Admins-Management
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-A supervisor with the email address already exists.
# Steps 
1. Enter an email address that already exists .  
2. Fill other fields with valid data.
3. Click **Save**.
# Expected Result
-The system prevents adding the supervisor, displays an appropriate validation message indicating that the email address already exists, and the supervisor is not created.
# Notes

# Attachments
