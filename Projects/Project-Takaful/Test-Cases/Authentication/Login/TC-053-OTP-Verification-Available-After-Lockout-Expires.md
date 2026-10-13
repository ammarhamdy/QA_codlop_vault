---
tc_id: TC-Login-053
title: Verify OTP verification becomes available after the temporary lockout expires
priority:
  - High
status:
  - Draft
type:
  - Functional
  - Security
linked_requirement: REQ-TAKAFUL-AUTH-001-Customer-Login-Redirection
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-The customer has been temporarily blocked after reaching the maximum wrong attempts.
 -A lockout duration is configured.
# Steps
1. Attempt to verify an OTP during the lockout period.
2. Wait until the lockout period expires.
3. Request or use a valid OTP according to the system flow.
# Expected Result
-Verification is blocked during the lockout period.
-After the lockout expires, the customer can attempt verification according to the configured security policy.   
-Expired or invalid OTPs remain rejected.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*