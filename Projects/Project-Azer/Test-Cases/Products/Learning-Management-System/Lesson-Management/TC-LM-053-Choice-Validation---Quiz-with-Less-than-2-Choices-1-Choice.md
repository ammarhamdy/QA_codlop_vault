---
tc_id: TC-LM-053
title: Choice Validation - Quiz with Less than 2 Choices (1 Choice)
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
| Quiz Title | One choice quiz |
| Choices | 1 Choice: 'أ) دعاء الاستفتاح' |

# Preconditions
- Admin on creation page.

# Steps
1. Configure a quiz with exactly 1 choice option.
2. Submit the form.

# Expected Result
- System blocks submission and displays: 'Each quiz must contain at least 2 choices.'

# Notes

# Attachments
