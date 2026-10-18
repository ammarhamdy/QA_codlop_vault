---
tc_id: TC-BKG-035
title: Verify System Sends Lessor Reminder at Half-Window and Reminders Continue After Subscription Expiry
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Booking-Confirmation-or-Rejection-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000521` |
| Receipt Upload Timestamp | `2026-10-18 00:00:00` |
| Default Confirmation Window | `24 Hours` |
| Half-Window Trigger | `12 Hours` (`2026-10-18 12:00:00`) |
| Lessor Subscription | Expired at `2026-10-18 06:00:00` |

# Preconditions
1. Customer uploaded transfer receipt at `00:00:00`, transitioning booking `BKG-2026-000521` to "Awaiting Lessor Confirmation".
2. Lessor's subscription expired at `06:00:00`.
3. Lessor has not yet confirmed or rejected the booking.

# Steps
1. Advance system time or observe automated scheduled jobs as time reaches `12:00:00` (12 hours elapsed from receipt upload).
2. Check lessor notification log / push notification history for `BKG-2026-000521`.
3. Verify that the reminder is dispatched despite the lessor's subscription being expired.
4. Verify the booking status remains "Awaiting Lessor Confirmation".

# Expected Result
1. Exactly at half of the confirmation window (12 hours by default), the system dispatches an automated reminder to the lessor urging them to confirm or decide on the booking.
2. The expiration of the lessor's subscription does not stop the reminder from being sent.
3. The booking status remains intact in "Awaiting Lessor Confirmation".

# Notes
- Requirement: UF-07 Step 1 and Alternative Flow A2 ("Lessor's subscription has expired: Lessor can still decide, and reminders continue").
- Confirmation window starts from receipt upload timestamp.

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
