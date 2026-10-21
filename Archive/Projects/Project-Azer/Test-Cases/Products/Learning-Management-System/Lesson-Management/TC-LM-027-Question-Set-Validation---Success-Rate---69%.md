---
tc_id: TC-LM-027
title: Question Set Validation - Success Rate = 69%
priority: Low
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
| Success Rate | 69 |

# Preconditions
- Admin on creation page.

# Steps
1. Enter '69' in the Passing Percentage field.
2. Submit the form.

# Expected Result
- The lesson is created successfully with a 69% passing rate threshold.

# Notes

# Attachments
