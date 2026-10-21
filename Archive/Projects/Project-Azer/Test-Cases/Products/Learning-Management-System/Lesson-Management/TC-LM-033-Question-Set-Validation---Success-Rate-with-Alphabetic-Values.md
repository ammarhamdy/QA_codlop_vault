---
tc_id: TC-LM-033
title: Question Set Validation - Success Rate with Alphabetic Values
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
| Field        | Value      |
| ------------ | ---------- |
| Lesson Title | Salat 1    |
| File         | salat.pdf  |
| Quiz Title   | Salat Quiz |
| Success Rate | "seventy"  |

# Preconditions
- Admin on creation page.

# Steps
1. Enter 'seventy' in the Passing Percentage field.
2. Click 'Save'.

# Expected Result
- The system rejects the string input, showing: 'Passing percentage must be a valid numeric value.'

# Notes

# Attachments
