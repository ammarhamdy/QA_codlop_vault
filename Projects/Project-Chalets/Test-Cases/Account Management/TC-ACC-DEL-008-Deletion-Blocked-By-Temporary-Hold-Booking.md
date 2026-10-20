---
tc_id: TC-ACC-DEL-008
title: Account Deletion Blocked by Active Temporary Hold Booking
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
| user_phone | +966504567890 |
| booking_number | BKG-2026-000101 |
| booking_status | held |
| hold_duration | 120 minutes |

# Preconditions
- User account is in `active` status.
- User has created a temporary hold booking (`BKG-2026-000101`) with status `held` whose countdown has not expired.
- User is logged in to the mobile application.

# Steps
1. Navigate to "حسابي" > "حذف الحساب".
2. Observe the initial blocker check performed by the application calling `GET /me/deletion`.
3. Attempt to proceed with deletion if the UI does not disable the action, or invoke `POST /me/deletion` with a valid OTP.
4. Inspect the on-screen error message and API response payload.

# Expected Result
1. The deletion screen flags an active blocker and displays the clear error message:
   "لا يمكن حذف الحساب ولديك حجز قائم. ألغه أو انتظر انتهاءه".
2. Account status remains `active`.
3. The temporary hold booking remains active with its countdown timer intact.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-20 12:20*
