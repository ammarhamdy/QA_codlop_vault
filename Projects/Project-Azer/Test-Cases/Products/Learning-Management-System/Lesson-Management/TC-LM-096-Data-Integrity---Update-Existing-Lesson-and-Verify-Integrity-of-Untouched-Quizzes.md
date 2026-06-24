---
tc_id: TC-LM-096
title: Data Integrity - Update Existing Lesson and Verify Integrity of Untouched Quizzes
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - data-integrity
---

# Test Data
| Field | Value |
| ----- | ----- |
| Update | Change lesson subtitle only |

# Preconditions
- Lesson exists with 3 quizzes.

# Steps
1. Click 'Edit' on the lesson.
2. Modify only the subtitle and save.
3. Check the quiz data in the database.

# Expected Result
- The subtitle is updated. All 3 quizzes, their choices, images, and correct answer associations remain completely unchanged.

# Notes

# Attachments
