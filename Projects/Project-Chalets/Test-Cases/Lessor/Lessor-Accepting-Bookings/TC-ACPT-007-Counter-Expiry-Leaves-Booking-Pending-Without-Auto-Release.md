---
tc_id: TC-ACPT-007
title: Counter Expiration Behavior - Booking Remains Pending and is Never Automatically Released
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Parameter | Value |
| --------- | ----- |
| Confirmation Window | 24 hours |
| Elapsed Time | 26 hours (2 hours past expiry) |
| Expected Booking Status | `Awaiting Lessor Confirmation` (`بانتظار تأكيد المؤجر`) |
| Expected Calendar Slot State | Held / Reserved (Not released to public) |
| Counter Appearance | Red indicator |

# Preconditions
1. Customer uploaded a transfer receipt 26 hours ago on a chalet with a 24-hour confirmation window.
2. The lessor has taken neither confirm nor reject action.

# Steps
1. Navigate to the calendar of the chalet and inspect the requested booking dates.
2. Check the booking status in the backend and in the lessor's "My Places' Bookings" list.
3. Attempt to book the same slot as another customer.
4. Open the booking details as the lessor.

# Expected Result
1. Even though the confirmation window has expired:
   - The booking remains in "Awaiting Lessor Confirmation" status.
   - The booking is NEVER automatically cancelled, rejected, or released by the system.
   - The calendar slot remains held and unavailable to other customers.
2. The countdown counter displays in red indicating the deadline has elapsed.
3. The lessor can still actively confirm or reject the booking.

# Notes
- Requirement: UF-80 (Alternative Flow A2), UF-04 (Error Flow E2).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
