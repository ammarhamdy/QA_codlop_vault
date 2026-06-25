---
tc_id: TC-LM-029
title: Question Set Validation - Success Rate = 100%
priority: High
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
| Success Rate | 100 |

# Preconditions
- Admin on creation page.

# Steps
1. Enter '100' in the Passing Percentage field.
2. Complete the form and submit.

# Expected Result
- The lesson is created successfully. A passing percentage of 100% means students must answer every single quiz correctly to pass.

# Notes

# Attachments
