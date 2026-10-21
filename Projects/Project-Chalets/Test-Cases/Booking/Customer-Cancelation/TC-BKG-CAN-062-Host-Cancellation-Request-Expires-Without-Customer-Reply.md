---
tc_id: TC-BKG-CAN-062
title: Host Cancellation Request Expires Without Customer Reply
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
| Scenario | Open host cancellation request |
| Scenario | check-in approaching |

# Preconditions

Customer has not responded to host cancellation request.

# Steps

1. Leave request unanswered.
2. Advance server time to check-in.
3. Inspect request and booking states and host notification.

# Expected Result

1. Request closes as Expired at check-in.
2. Booking remains Confirmed.
3. Host receives: لم يُرد على الطلب قبل موعد الدخول.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
