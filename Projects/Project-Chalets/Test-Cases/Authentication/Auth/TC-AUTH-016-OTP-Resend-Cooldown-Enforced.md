---
tc_id: TC-AUTH-016
title: Verify Enforcement of 60-Second Cooldown on Verification Code Resend
priority: Medium
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
| Cooldown Duration | 60 seconds |
| Early Request Timestamps | T0 + 10s, T0 + 30s |
| Permitted Request Timestamp | T0 + 61s |

# Preconditions
1. User has initiated a login or registration OTP request at time T0.
2. User is on the verification screen where the "Resend Code" (إعادة إرسال الرمز) button is displayed.

# Steps
1. Immediately observe the state of the "Resend Code" button following the initial OTP dispatch at T0.
2. At T0 + 15 seconds, attempt to click or trigger the "Resend Code" action.
3. At T0 + 45 seconds, attempt to click or trigger the "Resend Code" action.
4. Wait until the timer reaches 0 (T0 + 61 seconds).
5. Tap "Resend Code".

# Expected Result
1. Immediately upon sending the OTP, the resend control enters a 60-second cooldown state and displays a countdown timer (60s down to 0).
2. While the countdown is active (e.g., at T0 + 15s and T0 + 45s), the button is disabled and unclickable, or any API request sent is rejected with a cooldown error.
3. Once the 60 seconds have elapsed, the "Resend Code" button becomes active and clickable.
4. Clicking the button at T0 + 61s successfully triggers a new OTP dispatch.

# Notes
- Verifies business rule in Section 4: `إعادة الإرسال: بعد 60 ثانية`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 13:00*
