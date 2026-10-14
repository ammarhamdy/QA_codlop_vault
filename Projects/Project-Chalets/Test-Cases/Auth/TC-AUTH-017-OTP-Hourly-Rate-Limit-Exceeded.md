---
tc_id: TC-AUTH-017
title: Verify Blocking of Verification Code Requests After Exceeding Hourly Limit (5 Requests per Hour)
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
| Maximum Allowed Requests | 5 requests within a 60-minute sliding window |
| Request Sequence | Request 1 to 5 (each waiting for 60s cooldown to expire) |
| Request 6 | Attempted within 60 minutes of Request 1 |

# Preconditions
1. Mobile number `0501111111` has zero OTP requests in the past 60 minutes.
2. User is on the login or registration screen.

# Steps
1. Request OTP #1 for `0501111111`. Confirm successful dispatch.
2. Wait 60 seconds (cooldown), then request OTP #2. Confirm successful dispatch.
3. Wait 60 seconds, then request OTP #3. Confirm successful dispatch.
4. Wait 60 seconds, then request OTP #4. Confirm successful dispatch.
5. Wait 60 seconds, then request OTP #5. Confirm successful dispatch.
6. Wait 60 seconds, then attempt to request OTP #6 for the same mobile number within the same hour.

# Expected Result
1. Requests 1 through 5 succeed and send an SMS OTP.
2. On request 6, the system detects that the hourly quota (5 requests per hour per number) has been exceeded.
3. The request is blocked and no SMS is sent.
4. A clear rate-limiting error message is displayed (e.g., "تم تجاوز الحد الأقصى لطلب رمز التحقق (5 طلبات في الساعة). يرجى المحاولة لاحقاً").

# Notes
- Verifies rate limiting rule in Section 4: `بحد أقصى 5 طلبات في الساعة لكل رقم`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 13:00*
