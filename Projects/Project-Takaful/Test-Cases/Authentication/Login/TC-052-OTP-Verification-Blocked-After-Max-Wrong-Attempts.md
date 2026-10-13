---
tc_id: TC-Login-052
title: " Verify OTP verification is blocked after reaching the maximum allowed wrong attempts"
priority:
  - High
status:
  - Draft
type:
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
-  Customer is on the OTP verification screen & Maximum allowed wrong attempts is configured to X.
# Steps
1. Enter an incorrect OTP X consecutive times.
    
2. Attempt to verify another OTP.
# Expected Result
- The system rejects each incorrect OTP.
    
- After reaching the maximum allowed attempts, the system blocks further verification attempts according to the configured security policy & No session is created.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*