---
tc_id: TC-BKG-019
title: Verify Book Again Option Is Hidden When Expired Slot Is Taken by Another Customer
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
| Expired Booking ID | `BKG-2026-000303` (Customer A) |
| Chalet / Place | `منتجع المرجان` |
| Slot Date | `2026-11-24` |
| Intervening Booking | Customer B successfully reserves the slot after release |

# Preconditions
1. Customer A had a temporary booking (`BKG-2026-000303`) that expired.
2. The slot for `2026-11-24` was released and immediately booked (temporarily or confirmed) by Customer B.
3. The slot is no longer available.

# Steps
1. As Customer A, navigate to "My Bookings" and open expired booking `BKG-2026-000303`.
2. Inspect the screen elements and available action buttons.
3. Refresh the booking view if necessary.

# Expected Result
1. The **"Book Again"** (`احجز مجددًا`) button is **not** displayed.
2. The UI clearly reflects that the booking is expired and the slot is no longer available.
3. Customer A cannot re-initiate booking for this occupied date from the expired booking view.

# Notes
- Requirement: UF-03 Alternative Flow A1 ("Slot was taken by another customer: Book Again is not shown").

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
