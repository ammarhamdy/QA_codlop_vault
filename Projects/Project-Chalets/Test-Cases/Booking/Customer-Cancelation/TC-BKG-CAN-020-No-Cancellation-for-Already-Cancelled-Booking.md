---
tc_id: TC-BKG-CAN-020
title: No Cancellation for Already Cancelled Booking
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
| Booking state | cancelled_by_customer |

# Preconditions

-Customer already cancelled the booking.

# Steps

1. Reopen cancelled booking details.
2. Attempt to cancel again using POST /bookings/{uuid}/cancel.
3. Check booking history and host notifications.

# Expected Result

- Final cancelled state is preserved.
- No second cancellation transition, duplicate slot release, or duplicate notification occurs.

# Notes


# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
