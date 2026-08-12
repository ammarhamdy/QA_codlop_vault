---
tc_id: TC-CONTACT-005
title: Valid Contact Request
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-CONTACT-001
tags:
  - test-case
run_result: fail
---

# Test Data
| Field   | Value                |
| ------- | -------------------- |
| Name    | John Doe             |
| Email   | john.doe@example.com |
| Phone   | +15550123            |
| Message | Hello, I need help.  |

# Preconditions
- The Contact Us form is displayed.

# Steps
1. Enter valid contact information and message content in all fields.
2. Submit the Contact Us form.
3. Observe the system response.

# Expected Result
- The system creates a Contact Us request with the submitted information.

# Notes
- Applies to AC-05 — Valid Contact Request.

# Attachments