---
tc_id: TC-ACC-DEL-014
title: Deletion OTP Validation Rejection and 15-Minute Account Lockout
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field            | Value         |
| ---------------- | ------------- |
| user_phone       | +966509123456 |
| valid_otp        | ****          |
| invalid_otp      | ****          |
| lockout_duration | 15 minutes    |

# Preconditions
1. User account is in `active` status.
2. User has initiated the account deletion flow and triggered `POST /auth/otp/request` with `purpose: delete_account`.
3. User is on the OTP entry screen.

# Steps
1. Enter an invalid OTP (`0000`) on the first attempt and submit.
2. Observe the error response and remaining attempts counter.
3. Enter invalid OTPs sequentially for attempts 2, 3, and 4.
4. Enter an invalid OTP on the 5th attempt and submit.
5. Observe the error message and lock state.
6. Attempt to submit the valid OTP (`3344`) immediately after the 5th failure.
7. Wait 15 minutes and submit the valid OTP.

# Expected Result
1. Each incorrect attempt 1 through 4 displays: "الرمز غير صحيح. متبقٍ {n} محاولات" and returns HTTP 422 `OTP_INVALID`.
2. On the 5th failed attempt:
   - System locks further OTP verification for 15 minutes.
   - UI displays: "أوقفنا المحاولة 15 دقيقة لحماية حسابك".
   - API returns HTTP 423 `OTP_LOCKED`.
   - A security event is logged in `audit_logs`.
3. Submitting the valid OTP during the 15-minute lockout period is rejected with HTTP 423 `OTP_LOCKED`.
4. Account status remains `active`.
5. After 15 minutes elapse, the lock expires and a newly requested valid OTP is accepted.

# Notes
- Reference: Section 5, item 7 ("رمز خاطئ: الرمز غير صحيح. متبقٍ {n} محاولات؛ مقفل: أوقفنا المحاولة 15 دقيقة لحماية حسابك") and Section 17, item 10.
- OTP expiration behavior: If an OTP is older than 5 minutes, it is rejected with "انتهت صلاحية الرمز، اطلب رمزًا جديدًا" (`OTP_EXPIRED`).

# Attachments
- None

# Script
- None

---
*Last Updated: 2026-10-20 12:44*
