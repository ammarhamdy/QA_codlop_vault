---
tc_id: TC-LM-019
title: Content Validation - Text Lesson with Empty Content
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - content-validation
  - negative
run_result: pass
---

# Test Data
| Field                    | Value             |
| ------------------------ | ----------------- |
| Lesson Title             | No Content Lesson |
| Lesson Type              | text              |
| Description/Text Content | Empty ("")        |
| Question Title           | Quiz              |
| Success Rate             | 70                |

# Preconditions
- Admin on creation page.

# Steps
1. Select 'text' lesson type.
2. Leave both the File Upload and the Description field completely empty.
3. Complete the quiz section and click 'Save'.

# Expected Result
- The system blocks submission, showing a clear validation warning: 'You must provide either a PDF File OR Text Content for the lesson.'

# Notes

# Attachments
