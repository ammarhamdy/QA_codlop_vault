---
tc_id: TC-BKG-CAN-012
title: Cancel Confirmed Booking Exactly at 24-Hour Boundary
priority: High
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
| Scenario | Confirmed booking |
| Scenario | server check-in minus cancellation time = exactly 24h |

# Preconditions

-Default confirmed-cancellation cutoff is 24h and server time can be controlled.

# Steps

1. Set server test clock to exactly 24 hours before check-in.
2. Open booking details and attempt cancellation.
3. Verify result and stored timestamps.

# Expected Result

- Cancellation is allowed at the inclusive 24-hour boundary (حتى 24 ساعة).
- State becomes Cancelled by Customer and amount uses the fixed policy.

# Notes


# Attachments


# Script


---
*Last Updated: 2026-10-21 09:00*
