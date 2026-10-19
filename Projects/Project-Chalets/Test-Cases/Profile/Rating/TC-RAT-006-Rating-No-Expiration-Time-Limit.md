---
tc_id: TC-RAT-006
title: Verify Rating Button Remains Active Indefinitely with No Time Expiration
priority: Low
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Customer Mobile | `0503344556` |
| Booking ID | `BK-6010` |
| Chalet Name | `منتجع البساتين` |
| Check-out Date | 400 days prior to current date (> 1 year) |

# Preconditions
1. Customer has a confirmed completed booking `BK-6010` where check-out occurred over one year ago.
2. The booking has never been rated by the customer.
3. No cancellation or rejection occurred on `BK-6010`.

# Steps
1. Log in as the customer.
2. Navigate to "My Bookings" (`حجوزاتي`) -> "Past Bookings" (`الحجوزات السابقة`).
3. Open booking details for `BK-6010`.
4. Inspect the action buttons available on the booking screen.
5. Tap **"Rate Your Stay"** (`قيّم إقامتك`).

# Expected Result
1. The **"Rate Your Stay"** button is still visible and fully enabled.
2. The system does not enforce an expiration cutoff or time-limit error.
3. Tapping the button opens the standard rating form with stars and comment fields.

# Notes
- Requirement: UF-14 Alternative Flow A3 ("A year or more has passed with no rating -> Button still shown, there is no time limit").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
