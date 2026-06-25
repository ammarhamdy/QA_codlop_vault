---
tc_id: TC-LM-025
title: Question Set Validation - Success Rate = 0%
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - question-set
  - boundary
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Salat 1 |
| File | salat.pdf |
| Quiz Title | Salat Quiz |
| Success Rate | 0 |

# Preconditions
- Admin on creation page.

# Steps
1. Input '0' into the Passing Percentage field.
2. Submit the form.

# Expected Result
- The lesson is created successfully. A passing percentage of 0% means students pass automatically upon submitting the quiz.

# Notes

# Attachments
