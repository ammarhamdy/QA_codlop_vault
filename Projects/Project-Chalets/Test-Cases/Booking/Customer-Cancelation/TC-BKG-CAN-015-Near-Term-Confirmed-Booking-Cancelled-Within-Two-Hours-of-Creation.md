---
tc_id: TC-BKG-CAN-015
title: Near-Term Confirmed Booking Cancelled Within Two Hours of Creation
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
| Scenario | Created 1h ago |
| Scenario | check-in 20h after creation |
| Scenario | confirmed |

# Preconditions

-Booking was created less than 24h before check-in; default near-term window is 2h.

# Steps

1. Open confirmed booking details within 2h of its creation.
2. Select Cancel Booking and confirm.
3. Verify booking and slot state.

# Expected Result

- Near-term exception allows cancellation during the first two hours after creation.
- Booking is cancelled immediately and slot released within one minute.
- Due amount is calculated from fixed policy and time to check-in.

# Notes

# Attachments


# Script


---
*Last Updated: 2026-10-21 09:00*
