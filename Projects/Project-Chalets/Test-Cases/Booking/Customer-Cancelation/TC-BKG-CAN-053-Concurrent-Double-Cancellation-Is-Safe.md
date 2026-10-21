---
tc_id: TC-BKG-CAN-053
title: Concurrent Double Cancellation Is Safe
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
| Scenario | Eligible confirmed booking |

# Preconditions

-Customer owns confirmed booking; parallel API requests can be sent.

# Steps

1. Send two cancellation requests simultaneously for same booking.
2. Inspect booking state, slot and notifications.

# Expected Result

1. Only one logical cancellation occurs.
2. Final state is Cancelled by Customer.
3. Slot is released once; no duplicate host cancellation event.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
