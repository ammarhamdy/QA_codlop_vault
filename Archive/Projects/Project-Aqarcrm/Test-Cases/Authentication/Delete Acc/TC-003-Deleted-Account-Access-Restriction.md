---
tc_id: TC-Del-003
title: Verify deleted account cannot access authenticated features
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Aqar-Authentication
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
-The account has been deleted.
# Steps
1. Try to access a protected feature using the previous session or saved URL.
# Expected Result
-The user cannot access authenticated features and is prompted to log in again.
# Notes

# Attachments
