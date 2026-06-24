---
tc_id: TC-LM-086
title: Boundary - Exceed Maximum Lessons per Content Block
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - boundary
---

# Test Data
| Field | Value |
| ----- | ----- |
| Content Block ID | 6 |
| Lessons | Already contains maximum limit of lessons (e.g. 50) |

# Preconditions
- Course content section has a maximum capacity for lessons.

# Steps
1. Populate a content block to its maximum lesson threshold (e.g., 50 lessons).
2. Attempt to add one more lesson via the dashboard or API.
3. Save.

# Expected Result
- System blocks creation with: 'Cannot add more lessons. This content section has reached its maximum limit of 50 lessons.'

# Notes

# Attachments
