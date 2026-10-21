---
tc_id: TC-BKG-CAN-025
title: Cancellation Button Hidden for Frozen Booking
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
| Scenario | Confirmed or pending booking |
| Scenario | open dispute DSP ID |

# Preconditions

-Customer owns a booking frozen by an open dispute.

# Steps

1. Open booking details with an active dispute.
2. Inspect available actions and frozen-state message.
3. Try to cancel via direct API.

# Expected Result

- Status message reads: الحجز مجمّد حتى صدور قرار النزاع DSP-…
- Cancellation/state-changing action is unavailable.
- API rejects cancellation with BOOKING_FROZEN.
- Booking remains frozen and unchanged.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
