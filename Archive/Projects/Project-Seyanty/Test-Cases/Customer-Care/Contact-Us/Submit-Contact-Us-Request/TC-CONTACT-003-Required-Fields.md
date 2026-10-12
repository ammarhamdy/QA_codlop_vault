---
tc_id: TC-CONTACT-003
title: Required Fields
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
| Field                  | Value     |
| ---------------------- | --------- |
| One or more required field | (left empty in each run) |

# Preconditions
- The Contact Us form is displayed.

# Steps
1. Leave a field that the system requires empty.
2. Enter valid values in the remaining fields.
3. Submit the Contact Us form.
4. Repeat for each field the system requires.
5. Observe the system response.

# Expected Result
- The system rejects the submission when a required field is empty.
- The system displays appropriate validation messages.
- No Contact Us request is created.

# Notes
- Applies to AC-03 — Required Fields and AC-07 — Invalid Submission.

# Attachments