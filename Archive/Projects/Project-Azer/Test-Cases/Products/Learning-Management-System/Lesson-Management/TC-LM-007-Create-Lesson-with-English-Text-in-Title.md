---
tc_id: TC-LM-007
title: Create Lesson with English Text in Title
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - lesson-validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | "Chapter 2: Prayer Pillars" |
| Lesson Content | Valid Text content |
| Question Title | Pillars of Prayer |
| Success Rate | 70 |

# Preconditions
- User is logged in as an Admin.

# Steps
1. Enter English text in the 'Lesson Title' field.
2. Submit the form.

# Expected Result
- The lesson is created successfully. Standard LTR (Left-to-Right) formatting is correct.

# Notes

# Attachments
