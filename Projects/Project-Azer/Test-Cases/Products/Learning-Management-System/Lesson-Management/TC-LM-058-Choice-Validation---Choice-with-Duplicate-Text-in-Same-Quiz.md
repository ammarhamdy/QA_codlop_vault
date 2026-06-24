---
tc_id: TC-LM-058
title: Choice Validation - Choice with Duplicate Text in Same Quiz
priority: Medium
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - choice-validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz Title | Salat pillar quiz |
| Choice 1 | أ) دعاء الاستفتاح |
| Choice 2 | أ) دعاء الاستفتاح |

# Preconditions
- Admin on creation page.

# Steps
1. Enter identical text 'أ) دعاء الاستفتاح' in both Choice 1 and Choice 2 fields.
2. Click 'Save'.

# Expected Result
- System blocks submission, displaying a validation error: 'Duplicate choices are not allowed in a single quiz.'

# Notes

# Attachments
