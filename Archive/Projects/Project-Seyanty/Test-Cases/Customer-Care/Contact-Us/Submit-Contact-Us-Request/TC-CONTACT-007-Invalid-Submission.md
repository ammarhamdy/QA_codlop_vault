---
tc_id: TC-CONTACT-007
title: Invalid Submission
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
| Field   | Value         |
| ------- | ------------- |
| Name    | John Doe      |
| Email   | invalid-email |
| Phone   | +15550123     |
| Message | Hello.        |

# Preconditions
- The Contact Us form is displayed.

# Steps
1. Enter one or more invalid values (e.g., an invalid email).
2. Submit the Contact Us form.
3. Observe the system response.

# Expected Result
- The system does not create the Contact Us request.
- The system displays appropriate validation feedback.

# Notes
- Applies to AC-07 — Invalid Submission.

# Attachments