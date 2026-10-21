---
tc_id: TC-BKG-CAN-019
title: No Cancellation for Completed Booking
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Customer-Cancellation
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking state | completed after check-out |

# Preconditions

-Customer owns a booking whose check-out has passed.

# Steps

1. Open previous bookings and select the completed booking.
2. Inspect available actions.
3. Attempt direct cancellation API request.

# Expected Result

- No customer cancellation action is available.
- Completed booking does not transition to Cancelled by Customer.

# Notes

# Attachments


# Script


---
*Last Updated: 2026-10-21 09:00*
