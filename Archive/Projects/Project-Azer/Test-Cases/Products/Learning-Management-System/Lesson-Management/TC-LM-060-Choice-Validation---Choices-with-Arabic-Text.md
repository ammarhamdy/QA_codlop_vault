---
tc_id: TC-LM-060
title: Choice Validation - Choices with Arabic Text
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - choice-validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz Title | ركن الصلاة |
| Choice 1 | ج) الركوع (Correct) |
| Choice 2 | أ) دعاء الاستفتاح |

# Preconditions
- Admin on creation page.

# Steps
1. Type Arabic text in Choice fields.
2. Submit the form.

# Expected Result
- Lesson is created. Arabic letters, diacritics (tashkeel), and right-to-left layout are beautifully displayed.

# Notes

# Attachments
