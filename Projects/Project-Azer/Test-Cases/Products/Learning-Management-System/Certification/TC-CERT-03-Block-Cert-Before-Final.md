---
tc_id: TC-CERT-03
title: Block Certificate Access Before Final Exam Completion
priority: High
status: Ready
type: Functional
linked_requirement: REQ-004
tags:
  - test-case
  - certification
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Progress | All but the final exam completed |

# Preconditions
- User is logged in as a Student.
- User has NOT passed the final exam of the program.

# Steps
1. Attempt to navigate directly to the certificate download URL or the "My Certificates" section for that program.

# Expected Result
- The user is unable to access or trigger the certificate generation.
- Access is denied or the user is redirected to the final exam.

# Notes

# Attachments
