---
tc_id: TC-CM-06
title: Attaching Mandatory Exam to Reading Section
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - curriculum-management
  - admin
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Admin |
| Section ID | SEC-001 |
| Exam ID | EXAM-001 |

# Preconditions
- User is logged in as an Admin.
- Reading Section SEC-001 exists.

# Steps
1. Navigate to the management page of SEC-001.
2. Select "Attach Exam".
3. Choose EXAM-001 from the list or create a new one.
4. Mark the exam as "Mandatory".
5. Save changes.

# Expected Result
- EXAM-001 is successfully linked to SEC-001.
- The system confirms the exam is mandatory for completion of this section.

# Notes

# Attachments
