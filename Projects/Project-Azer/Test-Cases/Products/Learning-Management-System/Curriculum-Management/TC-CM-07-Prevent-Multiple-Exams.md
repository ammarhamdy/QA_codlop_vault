---
tc_id: TC-CM-07
title: Prevention of Multiple Exams per Reading Section
priority: Medium
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
| Section ID | SEC-001 |
| Exams | EXAM-001, EXAM-002 |

# Preconditions
- User is logged in as an Admin.
- Reading Section SEC-001 already has EXAM-001 attached.

# Steps
1. Navigate to the management page of SEC-001.
2. Attempt to attach a second exam, EXAM-002.
3. Save changes.

# Expected Result
- The system should prevent attaching more than one mandatory exam to a single section.
- An error message is displayed: "Only one mandatory exam can be attached to a reading section."

# Notes

# Attachments
