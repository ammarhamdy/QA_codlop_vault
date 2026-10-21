---
tc_id: TC-BKG-CAN-034
title: Strict Policy Boundary at 48 Hours
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
| Scenario | exactly 48h before check-in |

# Preconditions

-Customer has an eligible confirmed booking.

# Steps

1. Set time exactly 48h before check-in.
2. Inspect amount and compare with policy text.

# Expected Result

- Refund calculation matches the approved interpretation of the 48-hour boundary.

# Notes

Needs Business Confirmation: the exact 48-hour boundary is ambiguous in policy table.

# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
