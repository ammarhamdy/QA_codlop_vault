---
tc_id: TC-BKG-CAN-039
title: Refund Display When Entitlement Is Zero
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
| Scenario | Near-term booking confirmed and cancellable within 2h |
| Scenario | policy Strict |
| Scenario | check-in <24h |

# Preconditions

-Near-term cancellation is still permitted although refund policy yields 0%.

# Steps

1. Open cancellation dialog within near-term exception.
2. Read due amount.
3. Confirm cancellation.

# Expected Result

- Cancellation is allowed based on near-term eligibility, independently of refund percentage.
- Due amount is 0.00 SAR under Strict policy.
- No in-platform refund is initiated.

# Notes


# Attachments


# Script


---
*Last Updated: 2026-10-21 09:00*
