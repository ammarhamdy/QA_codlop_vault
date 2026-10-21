---
tc_id: TC-007
title: Verify numeric and special character validation for Name & Request Details
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-005
tags:
  - test-case
run_result: pass
---

# Test Data
| Field           | Value    |
| --------------- | -------- |
| Name            | 123/$#@! |
| Request Details | 361/*&^~ |

# Preconditions
- User is on 'Service Request ' page.
# Steps
1. Navigate to the 'Service Request' page.
2. Fill in valid data for other fields.
3. Enter an special characters only in Name& Request Details  field.
4. Click the "Send" button.
5. Repeat with only Numbers in Name& Request Details field.
# Expected Result
Numeric-only and special character-only values should be rejected with a validation error
# Notes

# Attachments
