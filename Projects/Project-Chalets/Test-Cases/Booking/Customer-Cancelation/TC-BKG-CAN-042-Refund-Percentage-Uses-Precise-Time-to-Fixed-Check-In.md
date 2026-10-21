---
tc_id: TC-BKG-CAN-042
title: "Refund Percentage Uses Precise Time to Fixed Check-In"
priority: High
status: Ready
type: Regression
linked_requirement: "PRD §11"
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Confirmed booking |
| Scenario | fixed check-in timestamp |
| Scenario | medium policy |
| Scenario | 48h until check-in |

# Preconditions

Booking has immutable check-in time and stored policy.

# Steps

1. Inspect booking check-in timestamp.
2. Cancel at a controlled time 48h before check-in.
3. Compare due amount to policy percentage.

# Expected Result

1. Calculation uses hours from cancellation to fixed check-in, not calendar-day labels.
2. Amount due is 50% of original fixed booking amount.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
