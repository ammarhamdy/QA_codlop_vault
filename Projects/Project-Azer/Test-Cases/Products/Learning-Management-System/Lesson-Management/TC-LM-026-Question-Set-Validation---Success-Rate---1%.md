---
tc_id: TC-LM-026
title: Question Set Validation - Success Rate = 1%
priority: Low
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - question-set
  - boundary
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Salat 1 |
| File | salat.pdf |
| Quiz Title | Salat Quiz |
| Success Rate | 1 |

# Preconditions
- Admin on creation page.

# Steps
1. Input '1' in the Passing Percentage field.
2. Submit the form.

# Expected Result
- The lesson is created successfully with a 1% passing rate threshold.

# Notes

# Attachments
