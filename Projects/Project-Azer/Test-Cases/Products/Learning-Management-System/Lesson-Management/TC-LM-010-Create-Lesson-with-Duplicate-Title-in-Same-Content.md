---
tc_id: TC-LM-010
title: Create Lesson with Duplicate Title in Same Content
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - lesson-validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Existing Title | "3.2 الفصل الثاني" |
| New Lesson Title | "3.2 الفصل الثاني" |
| Lesson Content | Valid PDF |
| Question Title | Valid Title |
| Success Rate | 70 |

# Preconditions
- A lesson titled '3.2 الفصل الثاني' already exists within Content Block ID 6.

# Steps
1. Go to Content Block ID 6 lesson creation page.
2. Enter '3.2 الفصل الثاني' in 'Lesson Title'.
3. Complete other fields and click 'Save'.

# Expected Result
- The system prevents creation, showing an error message: 'A lesson with this title already exists in this course section.'

# Notes

# Attachments
