---
tc_id: TC-AUTH-013
title: Verify Rejection of Incorrect Verification Code (OTP)
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Mobile Number | `0501111111` |
| Valid OTP Generated | `1234` |
| Entered Incorrect OTP | `9999` |

# Preconditions
1. Client has requested an OTP for login or registration.
2. System has generated and sent a valid OTP to the mobile device.
3. User is currently on the OTP input screen.

# Steps
1. On the OTP verification screen, enter the incorrect code `9999`.
2. Tap "Confirm" / "Verify".

# Expected Result
1. The verification code is rejected.
2. The user is not authenticated or logged in.
3. A clear error message is displayed (e.g., "رمز التحقق غير صحيح، يرجى المحاولة مرة أخرى").
4. The remaining attempts count is updated accordingly.

# Notes
- Verifies input validation and authentication failure handling for SMS OTP.

# Attachments

# Script

---
*Last Updated: 2026-10-14 13:00*
