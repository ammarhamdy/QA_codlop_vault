---
tc_id: TC-LM-023
title: Question Set Validation - Empty Question Title
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - question-set
  - negative
run_result: pass
---

# Test Data
| Field                       | Value      |
| --------------------------- | ---------- |
| Lesson Title                | Creed 1    |
| File                        | creed.pdf  |
| Quiz Title (Question Title) | Empty ("") |
| Success Rate                | 70         |
| Quizzes                     | 1 Quiz     |

# Preconditions
- Admin on creation page.

# Steps
1. Populate Lesson Title and PDF upload.
2. In the Question Set section, leave the Quiz Title (Question Set Title) completely empty.
3. Add a quiz and answers, then click 'Save'.

# Expected Result
- The system prevents creation, showing: 'Question Set Title (Quiz Title) is required.'

# Notes

# Attachments
