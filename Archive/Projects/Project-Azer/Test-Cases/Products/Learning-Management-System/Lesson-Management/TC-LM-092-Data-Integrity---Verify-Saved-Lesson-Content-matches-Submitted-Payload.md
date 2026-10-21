---
tc_id: TC-LM-092
title: Data Integrity - Verify Saved Lesson Content matches Submitted Payload
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - data-integrity
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Payload | title='Lesson A', subtitle='Sub A', desc='Desc A' |

# Preconditions
- Admin creates a lesson.

# Steps
1. Create a lesson with title='Lesson A', subtitle='Sub A', description='Desc A'.
2. Open the lesson details from the API or database directly.
3. Compare each property.

# Expected Result
- All properties (title, subtitle, description) match the submitted payload exactly, with no missing data or corrupted characters.

# Notes

# Attachments
