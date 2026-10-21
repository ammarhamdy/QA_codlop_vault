---
tc_id: TC-BKG-CAN-057
title: Host Refund Confirmation and Customer Receipt Acknowledgement
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
| Scenario | host refund due |
| Scenario | host marks refunded |

# Preconditions

Dispute has a refund decision and host has transferred money externally.

# Steps

1. Host enters required refund amount and date and selects تم الرد.
2. Customer opens refund notification.
3. Customer selects استلمت المبلغ.
4. Inspect dispute final state.

# Expected Result

1. Customer receives: سجّل المؤجّر رد {المبلغ}. أكّد الاستلام.
2. Customer acknowledgement closes dispute.
3. No payment is processed by platform.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
