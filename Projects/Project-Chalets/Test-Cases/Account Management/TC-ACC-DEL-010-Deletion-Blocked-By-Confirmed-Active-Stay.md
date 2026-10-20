---
tc_id: TC-ACC-DEL-010
title: Account Deletion Blocked by Confirmed Upcoming or Ongoing Booking
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| user_phone | +966506789012 |
| booking_number | BKG-2026-000103 |
| booking_status | confirmed |
| check_in_date | Tomorrow |

# Preconditions
-User account is in `active` status.
- User has a confirmed booking (`BKG-2026-000103`) for an upcoming stay tomorrow, or an ongoing stay currently within the check-in and check-out window.
- User is logged in to the mobile application.

# Steps
1. Navigate to "حسابي" > "حذف الحساب".
2. Observe the blockers list loaded from `GET /me/deletion`.
3. Attempt to proceed with the deletion flow.

# Expected Result
1. The application informs the user that account deletion is prevented due to an active confirmed booking.
2. The UI clearly states:
   "لا يمكن حذف الحساب ولديك حجز قائم. ألغه أو انتظر انتهاءه".
3. The deletion initiation is halted; the proceed button is disabled.
4. The confirmed booking remains fully valid and active.

# Notes

# Attachments

# Script

---
*Last Updated: 2026-10-20 12:20*
