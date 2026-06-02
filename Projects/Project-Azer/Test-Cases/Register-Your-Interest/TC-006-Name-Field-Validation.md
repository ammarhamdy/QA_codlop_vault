---
tc_id: TC-006
title: Name Field Validation (Letters Only, Min & Max Length))
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-003
tags:
  - test-case
---

# Test Data
| Field | Value                        |
| ----- | ---------------------------- |
| Name  | %$#                          |
| Name  | h                            |
| Name  | gfhmgfmfgdhmgdgnfngdhg...... |

# Preconditions
- User is on 'Register Your Interest ' page.
# Steps
# Steps
1. Navigate to the 'Register Your Interest' page.
2. Fill in valid data for Phone, Email Address, Message Content, and Entity, Partnership Type.
3. Enter an special characters only in name  field.
4. Click the "Send" button.
5. Repeat with only one char in name field or very long text.
# Expected Result
Any numeric, special character, too short, or too long input should be rejected with a validation error.
# Notes

# Attachments
