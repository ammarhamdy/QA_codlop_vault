---
tc_id: TC-LM-021
title: Content Validation - Text Lesson with HTML Content
priority: Medium
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
| Lesson Title | Formatted Lesson |
| Description/Text Content | <b>Welcome</b> to the lesson.<br><i>Fiqh</i> is defined as... <p>Paragraph 1</p> |
| Question Title | Fiqh Quiz |
| Success Rate | 70 |

# Preconditions
- Rich-text formatting/HTML is supported or allowed to be processed in the description.

# Steps
1. Paste HTML-tagged text into the Description field.
2. Complete the form and click 'Save'.

# Expected Result
- The lesson is created successfully. The HTML tags are rendered correctly on the student side (e.g. bold text, line breaks) without raw tag leakage.

# Notes

# Attachments
