---
tc_id: TC-Sup-010
title: Verify password and confirm password validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement:
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
-Admin is on the Add Supervisor page.
# Steps 
1. Enter a valid password.  
2. Enter the same value in the **Confirm Password** field. 
3. Enter different value and **Confirm Password**.
4. Fill all fields with valid data.
5. Click **Save**.
# Expected Result
-The system allows adding the supervisor when both fields match and prevents saving with an appropriate validation message when they do not match.
# Notes

# Attachments
