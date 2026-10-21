---
tc_id: TC-BKG-CAN-010
title: Cancelled Hold Frees Active Hold Limit
priority: Medium
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
| Configured active held bookings limit | 2 |

# Preconditions

-Customer currently has two active temporary holds.

# Steps

1. Confirm a third hold is blocked by the active-hold limit.
2. Cancel one of the two active holds.
3. Attempt to create a new eligible hold.

# Expected Result

1. Cancelled booking is no longer counted as an active hold.
2. Customer may create a new hold if other eligibility rules pass.
3. Cancelled booking remains in cancellation history.

# Notes


# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
