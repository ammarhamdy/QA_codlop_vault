---
tc_id: TC-CONTACT-004
title: Invalid Email
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
| Field    | Value           |
| -------- | --------------- |
| Email    | invalid-email   |
| Name     | John Doe        |
| Phone    | +15550123       |
| Message  | Hello, I need help. |

# Preconditions
- The Contact Us form is displayed.

# Steps
1. Enter an email address with an invalid format.
2. Enter valid values in the remaining fields.
3. Submit the Contact Us form.
4. Observe the system response.

# Expected Result
- The system rejects the submission.
- The system displays an appropriate validation message indicating the email format is invalid.
- No Contact Us request is created.

# Notes
- Applies to AC-04 — Email Validation and AC-07 — Invalid Submission.

# Attachments