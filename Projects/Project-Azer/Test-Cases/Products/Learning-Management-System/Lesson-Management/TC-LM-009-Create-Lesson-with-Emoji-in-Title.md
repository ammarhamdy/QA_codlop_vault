---
tc_id: TC-LM-009
title: Create Lesson with Emoji in Title
priority: Low
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - lesson-validation
run_result: pass
---

# Test Data
| Field          | Value                     |
| -------------- | ------------------------- |
| Lesson Title   | "Lesson 3: Fasting 📖🌙✨" |
| Lesson Content | Valid PDF file upload     |
| Question Title | Quiz 📘                   |
| Success Rate   | 70                        |

# Preconditions
- User is logged in as an Admin.

# Steps
1. Type a title containing emojis: 'Lesson 3: Fasting 📖🌙✨'.
2. Submit the form.

# Expected Result
- The lesson is created successfully. Emojis are fully stored (UTF-8 support) and rendered in the admin and student dashboards.

# Notes

# Attachments
