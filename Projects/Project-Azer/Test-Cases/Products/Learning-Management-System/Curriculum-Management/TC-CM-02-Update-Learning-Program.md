---
tc_id: TC-CM-02
title: Successful Update of Learning Program
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
| New Name | Advanced Java Masterclass v2 |

# Preconditions
- User is logged in as an Admin.
- Program PROG-001 already exists.

# Steps
1. Navigate to the Admin Panel -> Curriculum Management.
2. Select PROG-001 and click "Edit".
3. Change the program name to "Advanced Java Masterclass v2".
4. Save the changes.

# Expected Result
- The program details are updated successfully.
- The new name is reflected in the program list and details page.

# Notes

# Attachments
