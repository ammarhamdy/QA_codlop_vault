---
tc_id: TC-PAY-011
title: Add Duplicate Payment Method
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-018-Property-Settings2
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
-A payment method with the same name already exists.
# Steps
1. Navigate to Add Payment Method.
2. Enter the name of an existing payment method &Save.
# Expected Result
-The system prevents creating a duplicate payment method and displays an appropriate validation message.
# Notes

# Attachments
