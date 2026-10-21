---
tc_id: TC-BKG-CAN-060
title: Customer Accepts Host Cancellation Request
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
| Scenario | host cancellation request open |
| Scenario | amount 1000 SAR |

# Preconditions

Host has submitted an eligible cancellation request and customer has received it.

# Steps

1. Open host cancellation request from notification or booking details.
2. Inspect reason and Accept action.
3. Open confirmation dialog and accept.
4. Inspect booking state and calendar.

# Expected Result

1. Dialog says acceptance releases slot and requires full refund.
2. Booking becomes Cancelled by Agreement.
3. Slot is released; host owes full 1000 SAR within 3 business days.
4. Host receives acceptance notification.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
