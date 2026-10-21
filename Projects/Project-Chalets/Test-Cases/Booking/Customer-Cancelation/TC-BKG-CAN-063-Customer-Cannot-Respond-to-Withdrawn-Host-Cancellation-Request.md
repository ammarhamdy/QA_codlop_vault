---
tc_id: TC-BKG-CAN-063
title: Customer Cannot Respond to Withdrawn Host Cancellation Request
priority: Medium
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
| Scenario | Host cancellation request withdrawn before response |

# Preconditions

Customer owns booking and host has withdrawn open request.

# Steps

1. Open old notification/request.
2. Try to accept withdrawn request via response API.
3. Inspect booking state.

# Expected Result

1. Withdrawn request cannot be accepted or rejected as open.
2. Booking remains Confirmed.
3. API rejects stale state; BOOKING_STATE_CHANGED is documented for response endpoint.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
