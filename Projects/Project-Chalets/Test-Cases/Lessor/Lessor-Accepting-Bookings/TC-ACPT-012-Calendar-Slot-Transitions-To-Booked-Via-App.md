---
tc_id: TC-ACPT-012
title: Confirm Booking - Calendar Slot Immediately Updates to Booked via App
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Entity | Pre-Confirmation Calendar State | Post-Confirmation Calendar State |
| ------ | ------------------------------- | -------------------------------- |
| Calendar Slot Date | Held as "Awaiting Confirmation" / Temporary | Marked as **"Booked via App"** (`محجوز عبر التطبيق`) |
| Color / Key Indicator | Temporary / Pending Color (e.g., Orange/Yellow) | Confirmed Booked Color (Solid Reserved) |

# Preconditions
1. Customer has a pending booking for date `2026-11-15`.
2. The calendar date currently shows a pending hold state.

# Steps
1. As the lessor, confirm receipt of payment for the booking on date `2026-11-15`.
2. Navigate to the chalet's availability calendar.
3. Inspect date `2026-11-15` in the lessor view.
4. Inspect date `2026-11-15` in the public customer booking calendar.

# Expected Result
1. The calendar slot for `2026-11-15` immediately transitions from the holding state to "Booked via App" (`محجوز عبر التطبيق`).
2. The slot is locked and unavailable for booking by any other customer across all platforms.
3. The calendar color code updates to reflect confirmed app booking status.

# Notes
- Requirement: UF-04 (Main Flow Step 4; Notes - closed questions: "the calendar state changing from 'awaiting your confirmation' to 'booked via app'. Is that correct? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
