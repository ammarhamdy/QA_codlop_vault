---
tc_id: TC-LM-090
title: Boundary - Create Lesson Title Exactly at Maximum Length
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - boundary
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | A string of exactly 255 characters |

# Preconditions
- Admin on creation page.

# Steps
1. Fill in a 255-character title.
2. Save the lesson.

# Expected Result
- Lesson is saved successfully without truncation or errors.

# Notes

# Attachments
