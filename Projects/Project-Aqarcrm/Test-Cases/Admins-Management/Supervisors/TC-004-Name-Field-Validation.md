---
tc_id: TC-Sup-004
title: Verify minimum and maximum length validation for the Name field
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
-Admin is on the Add Supervisor page
# Steps
1. Enter a name with fewer than the minimum allowed characters and click Save.
2. Enter a name with the maximum allowed number of characters and save.
3. Enter a name exceeding the maximum allowed characters and save.
# Expected Result
-The system rejects names shorter than the minimum or longer than the maximum allowed length, displays the appropriate validation message, and accepts names within the allowed length.
# Notes

# Attachments
