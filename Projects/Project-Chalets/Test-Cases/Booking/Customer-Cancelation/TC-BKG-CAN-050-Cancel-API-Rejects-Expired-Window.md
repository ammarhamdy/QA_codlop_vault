---
tc_id: TC-BKG-CAN-050
title: Cancel API Rejects Expired Window
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
| Scenario | Confirmed ordinary booking |
| Scenario | check-in in 23h |

# Preconditions

-Customer owns confirmed booking; default cutoff 24h.

# Steps

1. Send POST /bookings/{uuid}/cancel with owner authentication.
2. Inspect API error and booking state.

# Expected Result

- Error code CANCELLATION_WINDOW_CLOSED is returned.
- No cancellation transition or slot release occurs.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
