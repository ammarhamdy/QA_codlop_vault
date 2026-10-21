---
tc_id: TC-BKG-CAN-033
title: Strict Policy Boundary at Seven Days
priority: High
status: Draft
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Customer-Cancellation
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Strict |
| Scenario | 1000 SAR |
| Scenario | exactly 168h before check-in |

# Preconditions

-Customer has an eligible confirmed booking.

# Steps

1. Set server time exactly seven days before check-in.
2. Inspect due amount and policy.

# Expected Result

- Calculation follows the approved boundary rule for the Strict policy.

# Notes

Needs Business Confirmation: "حتى 7 أيام" versus "من 7 أيام" does not uniquely resolve the exact seven-day boundary; do not hard-code 100% or 50% until clarified.

# Attachments

None.

# Script


---
*Last Updated: 2026-10-21 09:00*
