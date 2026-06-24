---
tc_id: TC-LM-098
title: Data Integrity - Delete a Choice from a Quiz and Save
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
| Delete | Choice ID 45 from Quiz ID 11 |

# Preconditions
- Lesson exists with a quiz having 3 choices (IDs 44, 45, 46). Choice 44 is marked correct.

# Steps
1. Edit the lesson.
2. Delete Choice ID 45 (an incorrect choice) from the form.
3. Click 'Save'.
4. Verify the choices of Quiz ID 11.

# Expected Result
- The choice is deleted from the database. The quiz now contains exactly 2 choices (IDs 44 and 46), with Choice 44 still correct.

# Notes

# Attachments
