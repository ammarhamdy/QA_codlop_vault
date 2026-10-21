---
tc_id: TC-LM-097
title: Data Integrity - Delete a Quiz from an Existing Lesson and Save
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
| Delete | Quiz ID 12 |

# Preconditions
- Lesson exists with 3 quizzes (IDs 11, 12, 13).

# Steps
1. Click 'Edit' on the lesson.
2. Remove Quiz ID 12 from the list using the UI remove button.
3. Click 'Save'.
4. Check the database.

# Expected Result
- The lesson is updated. Quiz ID 12 and all its associated answers are successfully deleted/cascade-removed. Quiz 11 and 13 remain intact.

# Notes

# Attachments
