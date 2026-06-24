---
tc_id: TC-LM-056
title: Choice Validation - Choice with Empty Text
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - choice-validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz Title | Salat pillar quiz |
| Choice 1 | أ) دعاء الاستفتاح |
| Choice 2 | Empty ("") |

# Preconditions
- Admin on creation page.

# Steps
1. Keep Choice 2's text input blank.
2. Attempt to save the lesson.

# Expected Result
- Submission is blocked. System shows: 'Choice text cannot be empty.'

# Notes

# Attachments
