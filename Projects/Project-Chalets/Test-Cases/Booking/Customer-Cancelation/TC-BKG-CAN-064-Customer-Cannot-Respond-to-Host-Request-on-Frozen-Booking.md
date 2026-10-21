---
tc_id: TC-BKG-CAN-064
title: Customer Cannot Respond to Host Request on Frozen Booking
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
| Scenario | Confirmed booking |
| Scenario | open dispute |
| Scenario | cancellation request previously created |

# Preconditions

Booking is frozen by an active dispute.

# Steps

1. Attempt POST /bookings/{uuid}/cancellation-requests/{req_uuid}/respond.
2. Inspect response and booking state.

# Expected Result

1. API rejects with BOOKING_FROZEN.
2. Frozen booking remains unchanged.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
