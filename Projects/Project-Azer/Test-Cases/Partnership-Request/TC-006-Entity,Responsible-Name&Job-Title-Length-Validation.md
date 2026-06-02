---
tc_id: TC-006
title: Verify Entity Name, Responsible Person Name, and Job Title Length Validation
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-004
tags:
  - test-case
---

# Test Data
| Field            | Value            |
| ---------------- | ---------------- |
| Entity Name      | G/vb...........  |
| Responsible Name | k/mn............ |
| Job Title        | c/zx...........  |


# Preconditions
 User is on 'Partnership Request ' page.
# Steps
1. Navigate to the 'Register Your Interest' page.
2. Fill in valid data for other fields.
3. Enter  one char only in Entity, Responsible name & job title field.
4. Click the "Send" button.
5. Repeat with very long text in Entity, Responsible name & job title field..
# Expected Result
Too short, or too long input should be rejected with a validation error.
# Notes

# Attachments
