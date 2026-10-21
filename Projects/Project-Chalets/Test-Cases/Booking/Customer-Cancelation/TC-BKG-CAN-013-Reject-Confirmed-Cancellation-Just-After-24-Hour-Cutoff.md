---
tc_id: TC-BKG-CAN-013
title: Reject Confirmed Cancellation Just After 24-Hour Cutoff
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
| Scenario | Confirmed booking |
| Scenario | check-in 23h 59m away |
| Scenario | ordinary booking |

# Preconditions

-Default confirmed-cancellation cutoff is 24h.

# Steps

1. Open booking details just after cutoff.
2. Inspect cancellation action and message.
3. Call POST /bookings/{uuid}/cancel using owner credentials.

# Expected Result

- Cancel Booking action is hidden & Message reads: انتهت مهلة الإلغاء المسموحة لهذا الحجز.
- Direct cancellation is rejected with CANCELLATION_WINDOW_CLOSED.
- Booking and slot remain confirmed/reserved.

# Notes

# Attachments

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
