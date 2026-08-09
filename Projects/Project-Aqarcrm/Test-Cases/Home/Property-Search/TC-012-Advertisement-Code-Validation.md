---
tc_id: TC-P-Search-012
title: Verify the Advertisement Code field rejects special characters within an alphanumeric code
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-006-Home
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
-User is on the Home page.
# Steps
1. Enter an alphanumeric code containing special characters (e.g., `AB12@34`).  
2. Click **Search**.
# Expected Result
-The input is rejected, or a validation message is displayed indicating that the advertisement code must contain only letters and numbers.
# Notes

# Attachments
