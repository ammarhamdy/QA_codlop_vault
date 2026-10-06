---
tc_id: TC-Login-001
title: Verify Login with valid phone number and OTP
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-TAKAFUL-AUTH-001-Customer-Login-Redirection
tags:
  - test-case
---

# Test Data
| Field         | Value       |
| ------------- | ----------- |
| Phone Code:   | `+966`      |
| Phone Number: | `512345678` |
| OTP           | ****        |

# Preconditions
-User is on the Login screen.
# Steps
1. Enter the Phone Number `512345678`.  
2. Select SMS or WhatsApp.  
3. Click **Send Verification Code**.  
4. Enter the received OTP.  
5. Submit the OTP.
# Expected Result
-OTP is verified successfully and the user is logged in successfully.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*