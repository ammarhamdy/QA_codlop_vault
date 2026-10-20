---
tc_id: TC-ACC-DEL-005
title: Decline Account Restoration During Grace Period on Login
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| user_phone | +966552345678 |
| otp_code | 6666 |
| prompt_action | Cancel ([إلغاء]) |

# Preconditions
- User account is currently in `pending_deletion` status with a valid `deletion_due_at` timestamp.
- User has no active authenticated session.

# Steps
1. Open the mobile application and enter the registered phone number `+966552345678`.
2. Enter the valid OTP code received via SMS.
3. Observe the restoration prompt displayed: "حسابك مجدول للحذف في {التاريخ}. هل تريد استعادته؟".
4. Tap the "إلغاء" (Cancel) button.
5. Observe the application's subsequent navigation and state.

# Expected Result
- The login process is aborted immediately.
- No user session or Sanctum access token is issued to the device.
- The user is returned to the initial visitor / login screen.
- User account in database remains strictly in `pending_deletion` status.
- The `deletion_due_at` date remains untouched and active.

# Notes

# Attachments

# Script

---
*Last Updated: 2026-10-20 12:20*
