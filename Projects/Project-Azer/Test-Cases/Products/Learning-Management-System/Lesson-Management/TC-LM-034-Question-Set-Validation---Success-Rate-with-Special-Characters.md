---
tc_id: TC-LM-034
title: Question Set Validation - Success Rate with Special Characters
priority: High
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
| Success Rate | "70%" |

# Preconditions
- Admin on creation page.

# Steps
1. Input '70%' (with percentage symbol) in the field.
2. Attempt to submit.

# Expected Result
- The validation fails, showing an error: 'Passing percentage must contain numbers only.'

# Notes

# Attachments
