---
tc_id: TC-LM-091
title: Boundary - Create Text Lesson with Maximum Character Description
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - boundary
run_result: fail
---

# Test Data
| Field       | Value                                 |
| ----------- | ------------------------------------- |
| Description | A string of exactly 65,535 characters |

# Preconditions
- Admin on creation page.

# Steps
1. Paste exactly 65,535 characters into Description.
2. Save the lesson.

# Expected Result
- Lesson is saved successfully. Length is fully accepted by database TEXT type.

# Notes

# Attachments
