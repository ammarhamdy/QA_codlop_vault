---
tc_id: TC-Register-008
title: Verify registration when all required fields are left empty
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Beauty-Authentication
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value   |
| ----- | ------- |
| name  | (empty) |
| phone | (empty) |
| email | (empty) |

# Preconditions
-User is on Register screen
# Steps
1. Leave all required fields empty.  
2. Click **Register**
# Expected Result
-Validation messages are displayed for all required fields and registration is not completed.
# Notes

# Attachments
