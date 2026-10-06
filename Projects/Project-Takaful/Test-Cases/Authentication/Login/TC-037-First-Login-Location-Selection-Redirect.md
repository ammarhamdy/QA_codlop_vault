---
tc_id: TC-Login-037
title: Verify redirection to Location Selection on first login
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: REQ-TAKAFUL-AUTH-001-Customer-Login-Redirection
tags:
  - test-case
---

# Test Data
| Field | Value       |
| ----- | ----------- |
| Code  | +966        |
| Phone | `512345678` |

# Preconditions
-User is logging in for the first time.
# Steps
1. Enter the valid Phone Number `512345678`.  
2. Select SMS or WhatsApp as the OTP delivery method.  
3. Click **Send Verification Code**.  
4. Receive the OTP.  
5. Enter the received OTP within 10 minutes.  
6. Wait for OTP verification.
# Expected Result
-OTP is verified successfully and the customer is redirected to the Location Selection screen.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*