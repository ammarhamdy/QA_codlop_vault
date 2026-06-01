---
tc_id: TC-007
title: Verify message content length validation (min & max limits)
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
| Field           | Value                   |
| --------------- | ----------------------- |
| Message Content | n                       |
| Message Content | nnnnnnnn............... |

# Preconditions
User is on 'Register Your Interest  ' page.
# Steps
1. Navigate to the 'Register Your Interest' page.
2. Fill in valid data for Name, Email Address, phone , and Entity & partnership  Type.
3. Enter one char only on message content  .
4. Click the "Send" button.
5. Repeat with very long text on message content field.
# Expected Result
The system should accept only messages within the allowed length range
# Notes

# Attachments
