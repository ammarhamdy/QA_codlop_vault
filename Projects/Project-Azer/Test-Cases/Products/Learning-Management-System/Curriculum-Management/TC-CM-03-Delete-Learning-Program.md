---
tc_id: TC-CM-03
title: Deletion of Learning Program and Dependency Handling
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - curriculum-management
  - admin
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Admin |
| Program ID | PROG-001 |

# Preconditions
- User is logged in as an Admin.
- Program PROG-001 exists and has attached Units and Sections.

# Steps
1. Navigate to the Admin Panel -> Curriculum Management.
2. Select PROG-001 and click "Delete".
3. Observe the system's reaction (Warning or direct deletion).
4. Confirm deletion.

# Expected Result
- System should either:
  a) Provide a dependency warning that child elements will be deleted.
  b) Cascade the deletion to all associated Units, Reading Sections, and Exams.
- Program PROG-001 is removed from the system.

# Notes

# Attachments
