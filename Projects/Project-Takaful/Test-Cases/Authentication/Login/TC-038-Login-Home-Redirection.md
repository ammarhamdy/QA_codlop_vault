---
tc_id: TC-Login-038
title: Verify redirection to Home after successful login
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
-User has logged in before.
# Steps
1. Enter the valid Phone Number `512345678`.  
2. Select SMS or WhatsApp as the OTP delivery method.  
3. Click **Send Verification Code**.  
4. Receive the OTP.  
5. Enter the received OTP within 10 minutes.  
6. Wait for OTP verification.
# Expected Result
-OTP is verified successfully and the customer is redirected to the Home screen.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*