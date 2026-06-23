---
tc_id: TC-PG-01
title: First Reading Section Unlocked upon Program Purchase
priority: High
status: Ready
type: Functional
linked_requirement: REQ-003
tags:
  - test-case
  - progression-gating
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Program ID | PROG-001 |
| Purchase Status | Purchased |

# Preconditions
- User is logged in as a Student.
- Program PROG-001 has been purchased.
- Program contains Units and Reading Sections.

# Steps
1. Enter the PROG-001 program.
2. Check the status of the first Unit and the first Reading Section (Section 1).

# Expected Result
- The first Reading Section of the first Unit is immediately unlocked and accessible.

# Notes

# Attachments
