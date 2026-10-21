---
tc_id: TC-BKG-CAN-057
title: "Type C Dispute Uses Fixed Refund Policy"
priority: High
status: Ready
type: Functional
linked_requirement: "PRD §11, §13"
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Cancelled booking |
| Scenario | original Medium policy |
| Scenario | amount 1000 |
| Scenario | 48h pre-check-in |

# Preconditions

Customer has opened valid type C dispute.

# Steps

1. Have support review and decide type C dispute.
2. Inspect decision, amount due and deadline.

# Expected Result

1. Decision requires host to refund according to policy fixed to booking (500 SAR).
2. Due deadline is 3 business days after the decision.
3. Both parties see decision and amount; platform does not transfer money.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
