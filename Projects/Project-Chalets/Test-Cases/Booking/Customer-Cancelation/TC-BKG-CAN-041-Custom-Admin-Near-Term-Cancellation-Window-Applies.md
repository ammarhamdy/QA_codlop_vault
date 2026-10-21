---
tc_id: TC-BKG-CAN-041
title: "Custom Admin Near-Term Cancellation Window Applies"
priority: High
status: Ready
type: Functional
linked_requirement: "PRD §11, §36"
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Admin near-term cancellation window changed from 2h to 3h |

# Preconditions

Admin configuration has propagated; near-term confirmed bookings exist.

# Steps

1. Attempt cancellation at 2h 30m after creation.
2. Attempt cancellation at 3h 1m after creation on another booking.

# Expected Result

1. First near-term booking can cancel.
2. Second near-term booking cannot cancel.
3. Window is measured from booking creation time.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
