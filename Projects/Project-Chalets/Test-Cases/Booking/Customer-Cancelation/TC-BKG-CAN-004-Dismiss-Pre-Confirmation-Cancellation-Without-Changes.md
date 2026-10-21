---
tc_id: TC-BKG-CAN-004
title: Dismiss Pre-Confirmation Cancellation Without Changes
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
| Booking | held |
| Scenario | slot reserved |

# Preconditions

-Customer has opened the cancellation confirmation dialog.

# Steps

1. Dismiss or cancel the dialog without confirming.
2. Reopen booking details and listing calendar.

# Expected Result

- Booking retains its original state and reservation.
- No cancellation notification is sent to the host.
- Customer can continue the original booking workflow.

# Notes



# Attachments

.

# Script


---
*Last Updated: 2026-10-21 09:00*
