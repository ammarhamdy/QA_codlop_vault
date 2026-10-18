---
tc_id: TC-BKG-038
title: Verify Booking Reaching Check-in Time Without Decision Is Kept Pending and Marked Urgent
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Booking-Confirmation-or-Rejection-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000524` |
| Check-in Time | `2026-10-18 16:00:00` |
| Current System Time | `2026-10-18 16:00:00` |
| Priority Tag Applied | `Urgent` (`عاجل`) |

# Preconditions
1. Booking `BKG-2026-000524` is in status "Awaiting Lessor Confirmation".
2. Lessor has not confirmed or rejected the booking.
3. System clock reaches the scheduled check-in time (`16:00:00`).

# Steps
1. Advance system time to match check-in time (`16:00:00`).
2. Verify the booking status of `BKG-2026-000524`.
3. Verify that the booking is NOT cancelled or expired automatically.
4. Check the support/admin console queue for `BKG-2026-000524`.
5. Verify the tag/badge applied to the ticket in the support dashboard.

# Expected Result
1. The booking remains in pending status ("Awaiting Lessor Confirmation") and is never automatically cancelled.
2. The reserved slot remains locked for this customer.
3. In the customer support operations dashboard, the booking is automatically flagged with the **"Urgent"** (`عاجل`) tag for immediate manual intervention and phone follow-up with the lessor.

# Notes
- Requirement: UF-07 Step 6 ("Check-in time arrives with no decision: Keeps the booking pending and marks it Urgent for support").

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
