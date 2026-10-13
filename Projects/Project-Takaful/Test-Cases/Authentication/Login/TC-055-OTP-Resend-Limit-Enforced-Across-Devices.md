---
tc_id: TC-Login-055
title: Verify OTP resend limits are enforced across multiple devices
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
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-The same account is active on Device A and Device B.
-Both devices can request OTPs for the same phone number.
-A shared resend limit is configured.
# Steps
1. Request OTP from Device A.
2. Wait for the cooldown to expire and repeat until the resend limit is reached.
3. Attempt to request another OTP from Device B.
# Expected Result
-The resend limit is enforced across both devices when the policy is account-wide or phone-number-wide. 
-Device B cannot bypass the limit.
-No additional OTP is sent after the shared limit is reached.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*