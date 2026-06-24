---
tc_id: TC-LM-024
title: Question Set Validation - Empty Success Rate (Passing Percentage)
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - question-set
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Creed 1 |
| File | creed.pdf |
| Quiz Title | Creed Quiz |
| Success Rate | Empty ("") |

# Preconditions
- Admin on creation page.

# Steps
1. Leave the Passing Percentage field empty.
2. Complete other fields with valid data.
3. Click 'Save'.

# Expected Result
- System blocks submission and highlights Passing Percentage as required, showing: 'Success Rate (Passing Percentage) is required.'

# Notes

# Attachments
