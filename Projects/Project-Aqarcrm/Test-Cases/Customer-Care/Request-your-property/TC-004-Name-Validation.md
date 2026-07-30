---
tc_id: TC-Property-Req-004
title: Verify Name validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003-Request-Your-Property
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
-User is on the Request Your Property page.
# Steps
1. Enter values such as **12345**, **@#$%^**, or a name containing only spaces in the **Full Name** field
2. Fill other fields with valid data & submit the form.
# Expected Result
-The system displays a validation message and prevents form submission.
# Notes

# Attachments
