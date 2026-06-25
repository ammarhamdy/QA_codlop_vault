---
tc_id: TC-LM-018
title: Content Validation - Text Lesson Creation with Valid Content
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - content-validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | History of Salat |
| Lesson Type | text |
| Description/Text Content | Salat (Islamic prayer) is one of the Five Pillars... [Paragraph of text] |
| Question Title | Salat Quiz |
| Success Rate | 70 |

# Preconditions
- Admin chooses 'text' or 'description' content option.

# Steps
1. Choose 'text' or 'description' content type.
2. Keep file upload empty.
3. Type a paragraph of valid lesson content in the Description text area.
4. Complete the rest of the form and submit.

# Expected Result
- The lesson is created successfully. Description is stored and displays clearly for the students.

# Notes

# Attachments
