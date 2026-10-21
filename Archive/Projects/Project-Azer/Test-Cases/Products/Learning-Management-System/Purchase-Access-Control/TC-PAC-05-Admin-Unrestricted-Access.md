---
tc_id: TC-PAC-05
title: Admin Unrestricted Access to Curriculum
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-001
tags:
  - test-case
  - purchase-access
  - admin
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Admin |
| Program ID | PROG-ANY |

# Preconditions
- User is logged in as an Administrator.

# Steps
1. Navigate to the Admin Panel.
2. Access any Learning Program, regardless of whether it has been "purchased" (as Admins do not purchase).
3. Navigate through Units, Reading Sections, and Exams.

# Expected Result
- Admin has full unrestricted access to all parts of the curriculum hierarchy.
- No paywalls or access denial messages are encountered.

# Notes

# Attachments
