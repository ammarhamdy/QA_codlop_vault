---
tc_id: TC-BKG-011
title: Verify Customer Can Book Same Chalet Multiple Times for Non-Overlapping Dates
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Chalet / Place | `شاليه السحاب` |
| First Booking Slot | `2026-11-15` (Full Day) |
| Second Booking Slot | `2026-11-20` (Full Day) |
| Third Booking Attempt | `2026-11-28` (Full Day) after 1st booking completes/ends |

# Preconditions
1. Customer is logged in, has 0 active temporary bookings, and is not banned.
2. `شاليه السحاب` has both `2026-11-15` and `2026-11-20` available.

# Steps
1. Navigate to `شاليه السحاب` and book date `2026-11-15` temporarily.
2. Confirm the booking (1st active temporary booking created).
3. Return to `شاليه السحاب` details screen and select date `2026-11-20`.
4. Tap **"Book Temporarily"** (`احجز مؤقتًا`) and confirm (2nd active temporary booking).
5. Fast-forward or complete the 1st booking (payment verified or period ends).
6. With active temporary bookings count reduced to 1, book date `2026-11-28` for the same chalet.

# Expected Result
1. Both temporary bookings on non-overlapping dates are created successfully for the same customer and same place.
2. The system does not prevent a customer from booking the same chalet multiple times as long as there is no temporal overlap and the active temporary booking limit (2) is not exceeded.
3. Once a previous booking period has ended, it does not block subsequent bookings.

# Notes
- Requirement: UF-01 Notes ("Same customer may book the same place multiple times if there is no time overlap. A previous booking does not block a new one once its period has ended").

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
