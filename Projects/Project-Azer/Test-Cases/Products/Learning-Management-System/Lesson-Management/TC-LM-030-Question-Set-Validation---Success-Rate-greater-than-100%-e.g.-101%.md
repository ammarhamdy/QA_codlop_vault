---
tc_id: TC-LM-030
title: Question Set Validation - Success Rate > 100% (e.g. 101%)
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - question-set
  - boundary
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Salat 1 |
| File | salat.pdf |
| Quiz Title | Salat Quiz |
| Success Rate | 101 |

# Preconditions
- Admin on creation page.

# Steps
1. Enter '101' in the Passing Percentage field.
2. Submit the form.

# Expected Result
- The system blocks submission, showing a validation error: 'Passing percentage cannot exceed 100%.'

# Notes

# Attachments
