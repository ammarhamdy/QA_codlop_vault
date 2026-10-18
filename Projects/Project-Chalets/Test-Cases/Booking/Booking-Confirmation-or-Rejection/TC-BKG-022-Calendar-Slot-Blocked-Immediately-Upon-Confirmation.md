---
tc_id: TC-BKG-022
title: Verify Calendar Slot Is Blocked Immediately Across All Channels Upon Booking Confirmation
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
| Booking Reference | `BKG-2026-000502` |
| Chalet / Place | `شاليه الأوركيد` |
| Booked Slot | Full Day, `2026-11-20` |

# Preconditions
1. Booking `BKG-2026-000502` is in status "Awaiting Lessor Confirmation".
2. The slot for `2026-11-20` is currently held temporarily for this booking.
3. Lessor is authenticated and on the booking decision screen.

# Steps
1. As the Lessor, tap **"Confirm"** (`تأكيد`) for booking `BKG-2026-000502`.
2. As a separate customer, open the place details and availability calendar for `شاليه الأوركيد`.
3. Check the availability status of `2026-11-20` on the customer app.
4. Attempt to initiate a new booking for `2026-11-20` (full day or any overlapping period).
5. Open the lessor's master chalet calendar and inspect `2026-11-20`.

# Expected Result
1. The calendar slot for `2026-11-20` is blocked immediately upon confirmation.
2. In the customer app, `2026-11-20` appears disabled/unavailable for booking.
3. Any attempt by another customer to select or book this slot is blocked.
4. On the lessor's management calendar, the date is marked as confirmed/occupied by `BKG-2026-000502`.

# Notes
- Requirement: UF-04 Step 4 ("Blocks the slot in the calendar immediately").

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
