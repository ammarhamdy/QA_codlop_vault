---
tc_id: TC-Login-047
title: Verify OTP remains valid after closing and reopening the app
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-OTP has been sent and is still within its validity period.
# Steps
1. Request an OTP and open the OTP screen.
2. Close the app completely.
3. Reopen the app before the OTP expires.
4. Verify the displayed screen.
5. If the OTP screen is displayed, enter the valid OTP.
# Expected Result
-The OTP screen is restored with the same OTP request while it is still valid. The valid OTP is accepted and the customer is logged in successfully.|
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*