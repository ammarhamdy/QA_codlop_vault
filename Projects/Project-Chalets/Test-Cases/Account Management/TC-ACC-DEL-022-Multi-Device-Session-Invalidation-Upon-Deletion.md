---
tc_id: TC-ACC-DEL-022
title: Multi-Device Session Invalidation upon Scheduling Account Deletion
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field      | Value                    |
| ---------- | ------------------------ |
| user_phone | +966509890123            |
| device_1   | iOS (Active Session)     |
| device_2   | Android (Active Session) |
| otp_code   | ****                     |

# Preconditions
-User account is in `active` status.
-User is logged in simultaneously on two devices: Device 1 (iOS) and Device 2 (Android).
-User has no active bookings or pending payments.

# Steps
1. On Device 1, navigate to "حسابي" > "حذف الحساب".
2. Complete the OTP verification and confirm deletion via the red confirmation dialog.
3. Verify that Device 1 transitions to `pending_deletion` and logs the user out.
4. On Device 2, attempt to perform an authenticated action (e.g. view favourites, open profile, or fetch bookings).
5. Inspect API responses received by Device 2.

# Expected Result
- Upon `POST /me/deletion` success, all active Sanctum personal access tokens associated with the user are revoked or restricted.
- Device 2's subsequent authenticated API requests fail with HTTP 401 `UNAUTHENTICATED` or HTTP 428 `ACCOUNT_PENDING_DELETION`.
- Device 2 terminates the active user session and redirects the user to the login/visitor screen.
- FCM device push tokens on all devices are unregistered or muted for standard promotional notifications.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-20 12:44*
