---
tc_id: TC-PD-Q-004
title: Verify Invalid Email Format in Question Submission
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-004-Beauty-Product-Details
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field    | Value          |
| -------- | -------------- |
| Name     | fatma          |
| Email    | fatma@gmail    |
| Question | Available now? |

# Preconditions
-User on product details page.
# Steps
1. Open Add question Form.
2. Enter invalid email format & fill other fields.
3. Click  Send.
# Expected Result
-The system should reject the invalid email format, display an appropriate validation message, and prevent the question from being submitted.
# Notes

# Attachments
