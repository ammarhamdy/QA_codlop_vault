---
tc_id: TC-PAY-004
title: Verify Method Name Length Validation
priority:
  - Medium
status:
  - Ready
type:
  - Functional
linked_requirement: US-018-Property-Settings2
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
-Admin is on the Add Payment Method form.

# Steps
1. Enter a method name that is **shorter than the minimum allowed length or exceeds the maximum allowed length**.  
2. Click **Save**.
# Expected Result
-The system prevents submission and displays the appropriate validation message indicating that the method name must be within the allowed length range.
# Notes

# Attachments
