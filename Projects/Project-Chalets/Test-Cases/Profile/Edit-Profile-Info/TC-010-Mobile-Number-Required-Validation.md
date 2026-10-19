---
tc_id: TC-Info-010
title: Verify Required Mobile Number Validation
priority:
  - High
  - Medium
  - Low
status:
  - Draft
  - Ready
type:
  - Functional
  - Regression
  - API
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field     | Value     |
| --------- | --------- |
| Old phone | 512345123 |
| New Ohone | (Empty)   |

# Preconditions
-User is logged in.
# Steps
1. Open Change Mobile Number.
2. Leave the mobile number field empty.
3. Attempt to continue.
# Expected Result
-A required-field validation message is displayed, and no OTP is sent.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*