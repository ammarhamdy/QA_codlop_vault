---
tc_id: TC-LM-054
title: Choice Validation - Quiz with Exactly 2 Choices
priority: High
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - choice-validation
  - boundary
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz Title | True/False Quiz |
| Choices | 2 Choices: '1. True' (Correct), '2. False' |

# Preconditions
- Admin on creation page.

# Steps
1. Configure a quiz with exactly 2 choice options.
2. Submit and save.

# Expected Result
- The lesson is created successfully. This satisfies the minimum choice requirement (e.g., for True/False questions).

# Notes

# Attachments
