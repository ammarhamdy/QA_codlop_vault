---
tc_id: TC-BKG-CAN-049
title: Unauthenticated Cancellation Request Is Rejected
priority: High
status: Ready
type: API
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Customer-Cancellation
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Valid booking UUID |
| Scenario | no auth token |

# Preconditions

-A cancellable booking exists.

# Steps

1. Call POST /bookings/{uuid}/cancel without credentials.
2. Inspect booking through owner session.

# Expected Result

1. Unauthenticated request cannot cancel booking.
2. Booking state, due amount and slot are unchanged.

# Notes

# Attachments


# Script

---
*Last Updated: 2026-10-21 09:00*
