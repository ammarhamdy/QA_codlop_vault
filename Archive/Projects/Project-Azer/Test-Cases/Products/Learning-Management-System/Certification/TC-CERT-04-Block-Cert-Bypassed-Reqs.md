---
tc_id: TC-CERT-04
title: Block Certificate Generation on Bypassed Requirements
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
| Progress | Final exam passed, but Section 2 Exam skipped/bypassed (via API/hack) |

# Preconditions
- User is logged in as a Student.
- User has managed to pass the final exam but has at least one preceding mandatory exam unsolved.

# Steps
1. Trigger the certificate generation process (or attempt to access the certificate).

# Expected Result
- The system verifies that all preceding exams and sections have been solved.
- Certificate is NOT generated because a preceding requirement was bypassed.

# Notes

# Attachments
