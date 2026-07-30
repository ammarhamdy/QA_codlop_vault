---
tc_id: TC-Broker-Req-006
title: Verify Commercial Registration Number validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-004-Broker-Join-Request
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
-User opens Join as a Broker form.
# Steps
1. Enter invalid values such as **letters**, **special characters**, or an invalid length in the Commercial Registration Number field.
2. Fill other fields with valid data.
# Expected Result
-The system displays a validation message according to the validation rules.
# Notes

# Attachments
