---
tc_id: TC-LM-006
title: Create Lesson with Arabic Text in Title
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
| Lesson Title | "الفصل الثاني: أركان الصلاة" |
| Lesson Content | Valid PDF file upload |
| Question Title | أركان الصلاة |
| Success Rate | 70 |

# Preconditions
- User is logged in as an Admin.

# Steps
1. Enter Arabic text in the 'Lesson Title' and 'Quiz Title' fields.
2. Fill out other details in Arabic and submit.

# Expected Result
- The lesson is saved successfully. RTL (Right-to-Left) rendering and Arabic characters are displayed perfectly in both the admin dashboard and student side.

# Notes

# Attachments
