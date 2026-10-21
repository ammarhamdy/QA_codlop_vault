---
tc_id: TC-BKG-CAN-024
title: Dismiss Confirmed Cancellation Dialog Without Cancelling
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
| Scenario | eligible cancellation window |

# Preconditions

-Customer has opened the confirmed cancellation dialog.

# Steps

1. Read the dialog and due amount.
2. Dismiss/cancel the dialog without accepting.
3. Refresh booking and calendar.

# Expected Result

- Booking remains Confirmed & Slot remains reserved.
- No host cancellation notification is sent.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
