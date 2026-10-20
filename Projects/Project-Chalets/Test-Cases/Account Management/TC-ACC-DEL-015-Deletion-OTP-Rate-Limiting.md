---
tc_id: TC-ACC-DEL-015
title: Deletion OTP Rate Limiting and Resend Cooldown
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| user_phone | +966509234567 |
| resend_cooldown | 60 seconds |
| hourly_limit | 5 requests |
| daily_limit | 20 requests |

# Preconditions
-User account is in `active` status.
-User is on the account deletion screen.
-No recent OTPs have been sent to this phone number in the past 24 hours.

# Steps
1. Request a deletion OTP via `POST /auth/otp/request` (`purpose: delete_account`).
2. Observe the resend button state and timer on the application screen.
3. Attempt to trigger a second OTP request within 60 seconds (at 30 seconds).
4. Wait until the 60-second countdown reaches 0, then trigger the 2nd request.
5. Repeat requests until 5 OTP requests are sent within 1 hour.
6. Attempt to trigger a 6th OTP request within the same hour.
7. Fast-forward or simulate testing the daily limit of 20 requests within 24 hours and attempt the 21st request.

# Expected Result
- The resend button is disabled for 60 seconds with a countdown timer.
- Attempting to request within 60 seconds returns: "يمكنك طلب رمز جديد بعد {ث} ثانية" with HTTP 429.
- Requests 2, 3, 4, and 5 succeed after their respective 60-second cooldowns.
- On the 6th request within the hour, the system blocks the request with message:
   "تجاوزت عدد المحاولات، حاول بعد {د} دقيقة" and returns HTTP 429 `OTP_SEND_LIMIT`.
- On the 21st request within the day, the request is blocked under the daily cap (`20 in a day`).
- Account status remains `active`.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-20 12:44*
