---
tc_id: TC-BKG-CAN-051
title: Cancel API Rejects Frozen Booking
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
| Scenario | Booking has open dispute |

# Preconditions

-Customer owns a booking frozen due to open dispute.

# Steps

1. Send POST /bookings/{uuid}/cancel with owner authentication.
2. Inspect response and booking state.

# Expected Result

- Error code BOOKING_FROZEN is returned.
- Booking remains frozen and unchanged.

# Notes


# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
