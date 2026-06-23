---
tc_id: TC-PG-02
title: Access Blocked for Section N+1 Before Exam N Completion
priority: High
status: Ready
type: Functional
linked_requirement: REQ-003
tags:
  - test-case
  - progression-gating
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Program ID | PROG-001 |
| Current Section | Section 1 |
| Target Section | Section 2 |
| Exam 1 Status | Not Started / Incomplete |

# Preconditions
- User is logged in as a Student.
- Program PROG-001 is purchased.
- User has access to Section 1.
- Exam 1 is the mandatory exam for Section 1.

# Steps
1. Navigate to the program curriculum view.
2. Locate Reading Section 2.
3. Attempt to click on or navigate to Reading Section 2.

# Expected Result
- Reading Section 2 is visible but disabled/locked.
- User cannot enter Reading Section 2.
- A tooltip or message indicates that Exam 1 must be completed first.

# Notes

# Attachments
