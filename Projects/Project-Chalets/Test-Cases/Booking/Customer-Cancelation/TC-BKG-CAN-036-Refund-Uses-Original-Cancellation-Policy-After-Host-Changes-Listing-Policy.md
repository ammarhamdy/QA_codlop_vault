---
tc_id: TC-BKG-CAN-036
title: Refund Uses Original Cancellation Policy After Host Changes Listing Policy
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
| Scenario | Booking stored Medium |
| Scenario | listing later changed to Flexible |
| Scenario | 48h until check-in |

# Preconditions

Booking was created while Medium policy was active.

# Steps

1. Change listing policy to Flexible after booking creation.
2. Open old booking details and cancellation dialog.
3. Confirm cancellation and compare refund.

# Expected Result

1. Booking retains original Medium policy.
2. Due amount is 50% of the original booking amount, not 100% from the newly configured Flexible policy.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
