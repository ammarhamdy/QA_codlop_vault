---
tc_id: TC-LM-100
title: UI/UX - Real-time Inline Validation Messages on Field Blur
priority: Medium
status: Ready
type: UI
linked_requirement: REQ-002
tags:
  - test-case
  - ui-ux
---

# Test Data
| Field | Value |
| ----- | ----- |
| Action | Focus and leave Lesson Title empty |

# Preconditions
- Admin loads creation page.

# Steps
1. Focus inside 'Lesson Title' input field.
2. Press 'Tab' or click outside the field without entering any text.
3. Observe the input field styling.

# Expected Result
- The field border turns red, and an inline error message appears immediately below: 'This field is required.'

# Notes

# Attachments
