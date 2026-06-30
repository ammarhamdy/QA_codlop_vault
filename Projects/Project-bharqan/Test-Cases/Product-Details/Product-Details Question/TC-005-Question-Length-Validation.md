---
tc_id: TC-PD-Q-005
title: Verify Question Length Validation
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-003-Bharqan-Product-Details
tags:
  - test-case
---

# Test Data
| Field    | Value           |
| -------- | --------------- |
| Name     | fatma           |
| Email    | fatma@gmail.com |
| Question | n/............  |

# Preconditions
-User on product details page.
# Steps
1. Open the **Questions** section.
2. Enter a question with 1 character & Click Send.
3. Enter a **very long question** (exceeding the maximum allowed length)  & Click Send.
# Expected Result
-The system validates the question length, rejects invalid input that is shorter than the minimum or longer than the maximum allowed length, and displays an appropriate validation message.
# Notes

# Attachments
