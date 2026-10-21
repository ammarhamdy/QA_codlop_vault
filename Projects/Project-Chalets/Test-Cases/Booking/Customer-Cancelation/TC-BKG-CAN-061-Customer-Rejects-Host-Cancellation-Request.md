---
tc_id: TC-BKG-CAN-061
title: Customer Rejects Host Cancellation Request
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
| Scenario | open host cancellation request |

# Preconditions

-Customer has received host cancellation request.

# Steps

1. Open request.
2. Select Reject.
3. Inspect booking state and host notification.

# Expected Result

1. Booking remains Confirmed and binding on host.
2. Host receives: رفض العميل طلب الإلغاء.
3. No slot release occurs.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
