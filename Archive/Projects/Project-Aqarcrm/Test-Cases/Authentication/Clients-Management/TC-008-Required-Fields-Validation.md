---
tc_id: TC-client-007
title: Verify required field validation for customer name and phone number
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
-Add Client form is open
# Steps
1. Leave the **Customer Name** empty.
2. Fill Phone number.
3. Leave both fields empty.
# Expected Result
-Validation messages are displayed for the required fields, and the customer is not added until all mandatory fields are completed.
# Notes

# Attachments
