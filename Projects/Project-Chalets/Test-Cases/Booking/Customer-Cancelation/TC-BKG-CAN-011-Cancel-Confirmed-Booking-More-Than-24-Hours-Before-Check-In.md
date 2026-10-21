---
tc_id: TC-BKG-CAN-011
title: Cancel Confirmed Booking More Than 24 Hours Before Check-In
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
| Scenario | check-in 48h away |
| Scenario | default window 24h |

# Preconditions

-Customer owns a confirmed booking with no open dispute.

# Steps

1. Open booking details.
2. Verify Cancel Booking action is available.
3. Open cancellation dialog, inspect due amount and confirm.
4. Reopen booking and calendar.

# Expected Result

- Cancellation completes immediately without host approval & Booking becomes Cancelled by Customer.
- Slot is released within one minute.
- Host is notified with booking ID and policy-based due amount.

# Notes


# Attachments


# Script


---
*Last Updated: 2026-10-21 09:00*
