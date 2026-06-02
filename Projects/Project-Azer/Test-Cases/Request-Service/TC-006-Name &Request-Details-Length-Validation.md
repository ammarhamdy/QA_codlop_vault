---
tc_id: TC-006
title: Verify  Name, Request Details Length Validation
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-005
tags:
  - test-case
---

# Test Data
| Field           | Value                        |
| --------------- | ---------------------------- |
| Name            | z/mnnn...................... |
| Request Details | c/mnnn.....................  |

# Preconditions
 User is on 'Service Request ' page.
# Steps
1. Navigate to the 'Service Request' page.
2. Fill in valid data for other fields.
3. Enter  one char only in Name, Request Details.
4. Click the "Send" button.
5. Repeat with very long text in Name, Request Details.
# Expected Result
Too short, or too long input should be rejected with a validation error.
# Notes

# Attachments
