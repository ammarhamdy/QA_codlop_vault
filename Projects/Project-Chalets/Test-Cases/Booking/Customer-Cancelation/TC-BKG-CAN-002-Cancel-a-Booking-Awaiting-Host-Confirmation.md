---
tc_id: TC-BKG-CAN-002
title: Cancel a Booking Awaiting Host Confirmation
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
| Booking | awaiting_confirmation |
| Scenario | receipt already uploaded |

# Preconditions

-Customer owns a booking with a successfully uploaded receipt and no open dispute.

# Steps

1. Open My Bookings and locate the awaiting-confirmation booking.
2. Open booking details and select Cancel Booking.
3. Confirm the red dialog.
4. Inspect the booking state, slot and message.

# Expected Result

- Cancellation is allowed at any time before host confirmation.
- State becomes Cancelled by Customer; slot released within one minute.
- Message says any transferred money is refunded directly with the host.
- Host is notified of cancellation.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
