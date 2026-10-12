---
tc_id: TC-U-Prop-007
title: Verify Property Code format validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-009-Properties
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
-Add Property form is open
# Steps
1. Enter valid PROP123 Code formats.
2. Click Add.
3.  Enter invalid 1^PROP@12 Code formats.
4. Click Add.
# Expected Result
-The field accepts only valid alphanumeric values and rejects invalid formats.
# Notes

# Attachments
