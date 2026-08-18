---
tc_id: TC-PServ-012
title: Verify Service Name Length Validation
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
-Admin is on the Add Nearby Service form.
# Steps
1. Enter a service name that is **shorter than the minimum allowed length or exceeds the maximum allowed length**.  
2. Click **Save**.
# Expected Result
-The system prevents submission and displays the appropriate validation message indicating that the service name must be within the allowed length range.
# Notes

# Attachments
