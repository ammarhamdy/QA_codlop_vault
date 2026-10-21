---
tc_id: TC-BKG-CAN-032
title: Medium Policy Boundary at Exactly Three Days
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
| Scenario | Medium |
| Scenario | 1000 SAR |
| Scenario | exactly 72h before check-in |

# Preconditions

-Customer has an eligible confirmed booking and controllable test time.

# Steps

1. Set cancellation time to exactly 72h before check-in.
2. Inspect refund due in confirmation dialog.
3. Confirm cancellation and inspect due amount.

# Expected Result

- PRD example explicitly expects 500.00 SAR when check-in is after 3 days under Medium policy.
- Displayed amount matches the stored policy.

# Notes


# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
