---
tc_id: TC-ACC-DEL-009
title: Account Deletion Blocked by Booking Awaiting Host Confirmation
priority: High
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
| user_phone | +966505678901 |
| booking_number | BKG-2026-000102 |
| booking_status | awaiting_confirmation |

# Preconditions
-User account is in `active` status.
-User has uploaded a payment transfer receipt for booking `BKG-2026-000102`.
-The booking status is currently `awaiting_confirmation` (host has not yet confirmed or rejected the transfer).


# Steps
1. Navigate to "حسابي" > "حذف الحساب".
2. View the deletion requirements and blocker check.
3. Observe the displayed blocker status.
4. Attempt to trigger the deletion request `POST /me/deletion`.

# Expected Result
- The deletion screen identifies the pending booking as an active blocker.
- The user is presented with the explicit blocker message:
   "لا يمكن حذف الحساب ولديك حجز قائم. ألغه أو انتظر انتهاءه".
2. Account status remains `active`.
3. The booking remains in `awaiting_confirmation` awaiting host decision.

# Notes

# Attachments

# Script

---
*Last Updated: 2026-10-20 12:20*
