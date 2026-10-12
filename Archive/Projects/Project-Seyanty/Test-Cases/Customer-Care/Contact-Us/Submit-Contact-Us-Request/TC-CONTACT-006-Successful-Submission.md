---
tc_id: TC-CONTACT-006
title: Successful Submission
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-CONTACT-001
tags:
  - test-case
run_result: pass
---

# Test Data
| Field   | Value                  |
| ------- | ---------------------- |
| Name    | John Doe               |
| Email   | john.doe@example.com   |
| Phone   | +15550123              |
| Message | Hello, I need help.    |

# Preconditions
- The Contact Us form is displayed.
- The visitor has no pending Contact Us submission.

# Steps
1. Enter valid contact information and message content.
2. Submit the Contact Us form.
3. Wait for the submission to complete.
4. Observe the system response.

# Expected Result
- The Contact Us request is successfully created.
- The system provides the visitor with an appropriate success confirmation.

# Notes
- Applies to AC-06 — Successful Submission.

# Attachments