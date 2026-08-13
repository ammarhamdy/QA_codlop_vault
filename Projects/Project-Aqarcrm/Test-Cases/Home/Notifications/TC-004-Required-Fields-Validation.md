---
tc_id: TC-Not-004
title: Verify required field validation for all required fields
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-011-Notifications
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
-Send notification form is open
# Steps
1. Leave one of these fields (Title ,Message,....) empty.
2. Fill other fields.
3. Leave all fields empty.
# Expected Result
-Validation messages are displayed for the required fields, and notification is not added until all mandatory fields are completed.
# Notes

# Attachments
