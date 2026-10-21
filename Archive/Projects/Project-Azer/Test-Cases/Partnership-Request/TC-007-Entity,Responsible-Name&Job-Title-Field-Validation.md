---
tc_id: TC-007
title: Verify numeric and special character validation for Entity, Responsible Person & Job Title fields
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-004
tags:
  - test-case
run_result: pass
---

# Test Data
| Field            | Value    |
| ---------------- | -------- |
| Entity Name      | 123/$#@! |
| Responsible Name | 361/*&^  |
| Job Title        | 12/%#&   |

# Preconditions
- User is on 'Partnership Request ' page.
# Steps
1. Navigate to the 'Partnership Request' page.
2. Fill in valid data for other fields.
3. Enter an special characters only in Entity , Responsible name & Job Title  field.
4. Click the "Send" button.
5. Repeat with only Numbers in Entity , Responsible name & Job Title  field.
# Expected Result
Numeric-only and special character-only values should be rejected with a validation error
# Notes

# Attachments
