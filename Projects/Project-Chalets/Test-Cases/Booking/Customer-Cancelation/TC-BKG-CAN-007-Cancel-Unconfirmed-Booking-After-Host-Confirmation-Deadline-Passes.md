---
tc_id: TC-BKG-CAN-007
title: Cancel Unconfirmed Booking After Host Confirmation Deadline Passes
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
| Booking | awaiting_confirmation past host response SLA |

# Preconditions

-Host has not confirmed or rejected the uploaded receipt, even after the confirmation deadline.

# Steps

1. Open the overdue awaiting-confirmation booking.
2. Verify current state and available actions.
3. Select Cancel Booking and confirm.

# Expected Result

-  Booking remains awaiting host confirmation until an actual decision or customer cancellation.
-  Customer can cancel even after the host confirmation SLA expires.
- Booking becomes Cancelled by Customer and slot is released within one minute.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
