---
tc_id: TC-BKG-CAN-047
title: Host Notification for Confirmed Booking Cancellation
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
| Scenario | Confirmed booking BKG ID |
| Scenario | due amount 500 SAR |

# Preconditions

-Customer successfully cancels confirmed booking.

# Steps

1. Open host notifications after cancellation.
2. Check immediate and in-app channels and message.
3. Open notification target.

# Expected Result

- Host gets: ألغى {العميل} الحجز BKG-… ويستحق {المبلغ} حسب سياستك
- Booking ID and amount are correct.
- Notification leads to cancelled booking details.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
