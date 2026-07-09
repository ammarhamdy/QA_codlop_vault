---
tc_id: TC-PD-Q-003
title: Verify Required Field Validation When Submitting a Question
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003-Bharqan-Product-Details
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field    | Value                                     |
| -------- | ----------------------------------------- |
| Name     | (empty)                                   |
| Email    | fatma@gmail.com                           |
| Question | Need to communicate with management team. |

# Preconditions
-User on product details page.
# Steps
1. Open Add question Form.
2. Leave Name empty & fill other fields.
3. Click  Send.
# Expected Result
-The question is not submitted, and a validation message is displayed indicating that the required field must be completed.
# Notes

# Attachments
