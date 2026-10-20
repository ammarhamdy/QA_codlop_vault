---
tc_id: TC-ACC-DEL-004
title: Restore Account During 30-Day Grace Period on Login
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field                 | Value            |
| --------------------- | ---------------- |
| user_phone            | +966551234567    |
| otp_code              | ****             |
| account_status_before | pending_deletion |
| account_status_after  | active           |

# Preconditions
-User account is in `pending_deletion` status (`deletion_due_at` is in the future, within 30 days).
-User is currently unauthenticated / logged out.

# Steps
1. Open the mobile application and initiate login by entering the phone number `+966551234567`.
2. Enter the valid OTP code received via SMS to complete verification.
3. Verify that instead of opening the standard home screen, a special restoration prompt appears:
   "حسابك مجدول للحذف في {التاريخ}. هل تريد استعادته؟" with buttons [استعادة الحساب] and [إلغاء].
4. Tap the "استعادة الحساب" (Restore Account) button.
5. Observe the transition to the main application interface.

# Expected Result
1. The UI renders the prompt with the exact scheduled deletion date dynamically formatted.
2. Tapping [استعادة الحساب] triggers `DELETE /me/deletion` successfully (HTTP 200).
3. User status in the database reverts from `pending_deletion` back to `active`.
4. The `deletion_due_at` column is cleared to `NULL`.
5. A valid user session is established with `abilities: ["app"]`.
6. User retains all previous account profile data (name, history, reviews, favourites).

# Notes

# Attachments


# Script


---
*Last Updated: 2026-10-20 12:20*
