---
tc_id: TC-010
title: Verify Inactive Supervisor Cannot Login
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
1. Navigate to the Login page.  
2. Enter the credentials of the inactive supervisor.  
3. Click Login.
# Expected Result
Login is denied, the supervisor is not authenticated, and an appropriate message is displayed indicating that the account is inactive or disabled.
# Notes

# Attachments
