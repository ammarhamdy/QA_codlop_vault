---
tc_id: TC-BKG-CAN-018
title: Ordinary Confirmed Booking Is Not Given New Two-Hour Grace
priority: High
status: Ready
type: Regression
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Customer-Cancellation
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Booking created >24h before check-in |
| Scenario | current time 23h before check-in |

# Preconditions

-Booking was not created as a near-term booking.

# Steps

1. Create and confirm a booking when check-in is more than 24h away.
2. Advance time to within the last 24h before check-in.
3. Attempt cancellation within two hours of a separate later event, such as confirmation.

# Expected Result

- Near-term exception is not applied to an ordinary booking.
- Cancellation remains blocked after ordinary 24h cutoff & Confirmation time does not reset booking creation time.

# Notes

# Attachments



# Script


---
*Last Updated: 2026-10-21 09:00*
