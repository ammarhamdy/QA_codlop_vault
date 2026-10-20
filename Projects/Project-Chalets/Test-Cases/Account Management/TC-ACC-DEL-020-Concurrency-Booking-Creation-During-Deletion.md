---
tc_id: TC-ACC-DEL-020
title: Concurrent Booking Creation Attempt While Deletion Flow is Pending Confirmation
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
  - regression
---

# Test Data
| Field      | Value           |
| ---------- | --------------- |
| user_phone | +966509678901   |
| chalet_id  | PLC-2026-000034 |
| otp_code   | ****            |

# Preconditions
-User account is in `active` status.
-User is logged in on two simultaneous client sessions (e.g. Session A on Device 1, Session B on Device 2).
-On Session A, the user has reached the final deletion step and has the red confirmation dialog open.

# Steps
1. On Session B, create a temporary hold booking on chalet `PLC-2026-000034` (`POST /bookings`).
2. Verify that the booking is successfully created with status `held`.
3. Simultaneously or immediately after on Session A, click the confirm button in the red deletion confirmation dialog (`POST /me/deletion`).
4. Inspect the API response from Session A and the database state.

# Expected Result
- The newly created booking (`status = 'held'`) is detected as an active blocker.
- The deletion request on Session A is rejected with HTTP 422 `DELETION_BLOCKED`.
- An error message appears on Session A: "لا يمكن حذف الحساب ولديك حجز قائم. ألغه أو انتظر انتهاءه".
- The account status remains `active`.
- The created booking remains intact in `held` status.

# Notes
# Attachments

# Script

---
*Last Updated: 2026-10-20 12:44*
