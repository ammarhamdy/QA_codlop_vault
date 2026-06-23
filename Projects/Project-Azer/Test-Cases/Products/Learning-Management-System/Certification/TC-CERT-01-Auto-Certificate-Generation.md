---
tc_id: TC-CERT-01
title: Automatic Certificate Generation Upon Program Completion
priority: High
status: Ready
type: Functional
linked_requirement: REQ-004
tags:
  - test-case
  - certification
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Program ID | PROG-001 |
| Final Exam | EXAM-FINAL |

# Preconditions
- User is logged in as a Student.
- User has purchased PROG-001.
- User has completed all preceding Units, Sections, and Exams.
- User is currently at the final Exam of the final Section of the final Unit.

# Steps
1. Complete and submit the final exam (EXAM-FINAL).
2. Ensure the result is "Passed".
3. Check for a certificate generation notification or check the "My Certificates" section.

# Expected Result
- An immediate generation event is triggered for the completion certificate.
- The certificate is available for download or viewing.

# Notes

# Attachments
