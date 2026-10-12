---
tc_id: TC-Purp-006
title: Verify Purpose Name Length Validation
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
-Admin is on the **Add Property Purpose** page.
# Steps
1. Enter a purpose name that is shorter than the minimum allowed length.  
2.  Enter a purpose name that exceeds maximum allowed length.  
3. Select color &status.  
4. Click **Save**.
# Expected Result
-The system prevents submission and displays a validation message indicating that the purpose name must meet the allowed length.
# Notes

# Attachments
