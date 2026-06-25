---
tc_id: TC-LM-057
title: Choice Validation - Choice with Spaces-Only Text
priority: Medium
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - choice-validation
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz Title | Salat pillar quiz |
| Choice 1 | أ) دعاء الاستفتاح |
| Choice 2 | "   " (spaces only) |

# Preconditions
- Admin on creation page.

# Steps
1. Input only spaces in Choice 2 text field.
2. Click 'Save'.

# Expected Result
- System trims input, identifies it as blank, blocks saving, and shows: 'Choice text cannot be empty or spaces-only.'

# Notes

# Attachments
