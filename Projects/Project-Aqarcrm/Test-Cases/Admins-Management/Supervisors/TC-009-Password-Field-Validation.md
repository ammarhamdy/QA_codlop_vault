---
tc_id: TC-Sup-009
title: Verify password field validation
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-013-Admins-Management
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on the Add Supervisor page.
# Steps
1. Enter passwords that do not meet the password requirements (e.g., shorter than the minimum length or invalid format).  
2. Click **Save**.  
# Expected Result
-The system rejects invalid passwords, displays the appropriate validation message, and accepts a valid password.
# Notes

# Attachments
