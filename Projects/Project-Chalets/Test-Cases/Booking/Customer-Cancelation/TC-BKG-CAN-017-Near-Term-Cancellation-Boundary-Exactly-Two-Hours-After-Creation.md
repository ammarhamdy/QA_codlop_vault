---
tc_id: TC-BKG-CAN-017
title: Near-Term Cancellation Boundary Exactly Two Hours After Creation
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
| Scenario | Near-term confirmed booking |
| Scenario | server creation time + 2h |

# Preconditions

-Default near-term window is two hours; test clock is controllable.

# Steps

1. Set test clock to exactly two hours after booking creation.
2. Attempt cancellation as owner.
3. Inspect result and server timestamps.

# Expected Result

- Cancellation is accepted at the inclusive end of the two-hour window.
- Immediately after the boundary cancellation is rejected.

# Notes

Boundary interpretation is derived from "خلال ساعتين"; verify precision with business if the implementation uses strict comparison.

# Attachments

# Script

---
*Last Updated: 2026-10-21 09:00*
