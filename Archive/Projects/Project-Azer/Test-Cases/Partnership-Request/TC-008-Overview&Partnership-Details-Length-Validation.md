---
tc_id: TC-008
title: Verify length validation for Entity Overview and Partnership Details fields
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-004
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field               | Value                                      |
| ------------------- | ------------------------------------------ |
| Entity Overview     | Text below min length / exceeds max length |
| Partnership Details | Text below min length / exceeds max length |

# Preconditions
- User is on 'Partnership Request ' page.

# Steps
1. Navigate to the 'Partnership Request' page.
2. Fill in valid data for other fields.
3. Enter  a value shorter than the minimum allowed length in **Partnership Details**& Entity Overview.
4. Click the "Send" button.
5. Repeat with value exceeding the maximum allowed length in both fields.

# Expected Result
Values below the minimum or above the maximum length should be rejected with a validation error.
# Notes

# Attachments
