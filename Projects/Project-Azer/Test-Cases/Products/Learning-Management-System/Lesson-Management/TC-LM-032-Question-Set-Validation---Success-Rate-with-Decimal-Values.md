---
tc_id: TC-LM-032
title: Question Set Validation - Success Rate with Decimal Values
priority: Medium
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - question-set
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Salat 1 |
| File | salat.pdf |
| Quiz Title | Salat Quiz |
| Success Rate | 75.5 |

# Preconditions
- Admin on creation page. Success Rate is restricted to whole integer numbers.

# Steps
1. Enter '75.5' in the Passing Percentage field.
2. Click 'Save'.

# Expected Result
- The system rejects decimal values, showing a validation error: 'Passing percentage must be an integer (whole number).'

# Notes

# Attachments
