---
tc_id: TC-Login-054
title: Verify resend limit cannot be bypassed by switching between SMS and WhatsApp
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
-SMS and WhatsApp OTP delivery are supported.
-A maximum resend limit is configured for the same phone number or verification flow.
# Steps
1. Request OTP through SMS.
2. Complete the required cooldown and resend using SMS until the limit is reached.
3. Switch the delivery method to WhatsApp.
4. Attempt another OTP request.
# Expected Result
-Switching delivery methods does not bypass the configured resend limit if that limit applies both  channels.    
-No additional OTP is sent when the shared limit has been reached.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*