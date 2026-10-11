---
tc_id: TC-Phone-031
title: Verify that a phone number with invalid length is rejected
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: Edit Profile
tags:
  - test-case
---

# Test Data
| Field                | Value        |
| -------------------- | ------------ |
| Current phone number | 512347891    |
| New Phone number     | 5471136      |
| New Phone number     | 547113697111 |

# Preconditions
-Customer is in Change Phone Number flow.
# Steps
1. Click on Change phone number.
2. Enter a phone number that does not meet the defined length rules.  

# Expected Result
-The phone number is rejected with an appropriate validation message, the customer cannot proceed to OTP verification, and the existing phone number remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*