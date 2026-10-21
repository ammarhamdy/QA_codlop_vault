---
tc_id: TC-BKG-CAN-016
title: Near-Term Confirmed Booking Cannot Cancel After Two Hours
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
| Scenario | Created 2h 1m ago |
| Scenario | created within 24h of check-in |

# Preconditions

-Booking was created less than 24h before check-in and has been confirmed.

# Steps

1. Open booking details after two-hour window.
2. Check cancellation action and expired message.
3. Submit direct cancel API request as owner.

# Expected Result

- Cancel Booking is unavailable.
- Message indicates the cancellation window has expired.
- Direct request is rejected with CANCELLATION_WINDOW_CLOSED.
- Booking remains confirmed.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
