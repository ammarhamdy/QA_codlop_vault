---
tc_id: TC-BKG-CAN-058
title: Customer Reports Refund Not Received After Host Claims Payment
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
| Scenario | Type C dispute |
| Scenario | host has marked refund sent |

# Preconditions

Customer has not received the claimed external refund.

# Steps

1. Open refund confirmation prompt.
2. Select لم يصلني.
3. Inspect dispute state and support queue.

# Expected Result

1. Dispute returns to support review instead of closing as received.
2. Host payment claim alone does not force customer acknowledgement.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
