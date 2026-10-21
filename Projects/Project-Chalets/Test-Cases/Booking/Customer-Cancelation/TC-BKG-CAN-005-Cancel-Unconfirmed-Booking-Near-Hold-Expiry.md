---
tc_id: TC-BKG-CAN-005
title: Cancel Unconfirmed Booking Near Hold Expiry
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
| Scenario | Held booking |
| Scenario | server hold deadline a few seconds away |

# Preconditions

-Customer owns an active held booking whose timer has not expired.

# Steps

1. Open booking details near the hold deadline.
2. Confirm cancellation while the booking is still held.
3. Refresh state after the original hold deadline.

# Expected Result

- If cancellation is accepted before expiration, the final state is Cancelled by Customer, not Hold Expired.
- The slot is released once; no contradictory final states are shown.
- The booking does not count toward the expired-hold penalty threshold.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
