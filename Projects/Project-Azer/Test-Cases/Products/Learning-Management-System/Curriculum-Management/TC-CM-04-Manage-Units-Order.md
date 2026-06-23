---
tc_id: TC-CM-04
title: Managing and Re-ordering Units within a Program
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - curriculum-management
  - admin
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Admin |
| Program ID | PROG-001 |
| Units | Unit A, Unit B, Unit C |

# Preconditions
- User is logged in as an Admin.
- Program PROG-001 exists.

# Steps
1. Navigate to PROG-001 management page.
2. Add three Units: Unit A, Unit B, and Unit C.
3. Use the re-order tool (drag-and-drop or numeric order) to change the sequence to: Unit B, Unit A, Unit C.
4. Save the order.

# Expected Result
- Units are successfully added to the program.
- The new order (Unit B, Unit A, Unit C) is saved and persisted.

# Notes

# Attachments
