---
tc_id: TC-PAC-01
title: Successful Access to Purchased Learning Program
priority: High
status: Ready
type: Functional
linked_requirement: REQ-001
tags:
  - test-case
  - purchase-access
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Program ID | PROG-001 |
| Purchase Status | Purchased |

# Preconditions
- User is logged in as a Student.
- The Learning Program PROG-001 has been successfully purchased by the user.

# Steps
1. Navigate to the "My Learning" or "Programs" section.
2. Click on the "PROG-001" program.
3. Attempt to access the first Unit and its first Reading Section.

# Expected Result
- The user should be able to access the program dashboard.
- The first Unit and the first Reading Section should be unlocked and accessible.

# Notes

# Attachments
