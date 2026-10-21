---
tc_id: TC-BKG-CAN-052
title: Concurrent Customer Cancellation and Host Confirmation
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
| Scenario | Booking awaiting_confirmation |
| Scenario | host and customer valid sessions |

# Preconditions

-Booking is awaiting confirmation and no dispute exists.

# Steps

1. At the same instant submit host confirm and customer cancel requests.
2. Read final booking state and calendar.
3. Inspect both users notifications.

# Expected Result

- Exactly one consistent transition wins based on server processing order.
- If cancellation wins, booking is cancelled and cannot later be confirmed.
- If confirmation wins, customer cancellation is re-evaluated against confirmed booking rules.
- No duplicate active reservation or contradictory final state exists.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
