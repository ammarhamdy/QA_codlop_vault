---
tc_id: TC-LM-059
title: Choice Validation - Choice with Extremely Long Text
priority: Medium
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
| Quiz Title | Detailed Quiz |
| Choice 1 | A string of exactly 500 characters describing a complex theological theory... |
| Choice 2 | Short Answer B |

# Preconditions
- Admin on creation page.

# Steps
1. Enter a 500-character description as Choice 1 text.
2. Submit the form.

# Expected Result
- The lesson is created successfully, with long text rendering cleanly on-screen.

# Notes

# Attachments
