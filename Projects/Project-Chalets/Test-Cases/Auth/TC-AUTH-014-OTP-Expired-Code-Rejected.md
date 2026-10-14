---
tc_id: TC-AUTH-014
title: Verify Rejection of Expired Verification Code (OTP) After 5 Minutes
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
| Valid OTP | Generated at timestamp T0 |
| Submission Time | T0 + 5 minutes and 5 seconds |

# Preconditions
1. Client has requested an OTP on the login or registration screen.
2. System generated an OTP with a 5-minute validity window.
3. User waits on the OTP screen until more than 5 minutes have elapsed.

# Steps
1. Request an OTP for mobile number `0501111111` at time T0.
2. Allow 5 minutes and 5 seconds to elapse without entering the code.
3. Enter the original code received at T0.
4. Tap "Confirm" / "Verify".

# Expected Result
1. The system detects that the code has exceeded its 5-minute validity window.
2. The verification fails and the code is rejected.
3. An error message is displayed stating that the verification code has expired (e.g., "انتهت صلاحية رمز التحقق، يرجى طلب رمز جديد").
4. The user is prompted to request a new verification code.

# Notes
- Verifies business rule in Section 4: `صلاحية الرمز: 5 دقائق`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 13:00*
