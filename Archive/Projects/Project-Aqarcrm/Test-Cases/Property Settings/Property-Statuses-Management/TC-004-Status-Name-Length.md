---
tc_id: TC-PStat-004
title: Verify Property Status Name Length Validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-017-Property-Settings1
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
-Admin is on the Add Property Status page.
# Steps
1. Enter a status name that is **shorter than the minimum allowed length or exceeds the maximum allowed length**.  
2. Click **Save**
# Expected Result
-The system prevents submission and displays the appropriate validation message indicating that the status name must be within the allowed length range.
# Notes

# Attachments
