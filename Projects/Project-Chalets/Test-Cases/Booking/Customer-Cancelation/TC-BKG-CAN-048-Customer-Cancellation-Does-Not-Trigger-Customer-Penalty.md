---
tc_id: TC-BKG-CAN-048
title: Customer Cancellation Does Not Trigger Customer Penalty
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
| Scenario | Customer with no preexisting penalty |
| Scenario | eligible booking |

# Preconditions

-Customer cancels booking within allowed window.

# Steps

1. Capture customer penalty record and expired-hold count.
2. Cancel eligible booking.
3. Review penalties and count after cancellation.

# Expected Result

- No new customer punishment or warning is applied solely for permitted cancellation.
- Manual cancellation is not counted as expired temporary hold.

# Notes


# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
