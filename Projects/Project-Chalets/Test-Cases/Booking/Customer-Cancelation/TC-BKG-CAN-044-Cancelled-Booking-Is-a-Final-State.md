---
tc_id: TC-BKG-CAN-044
title: "Cancelled Booking Is a Final State"
priority: High
status: Ready
type: API
linked_requirement: "PRD §11"
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking | cancelled_by_customer |

# Preconditions

Customer has cancelled a booking successfully.

# Steps

1. Refresh booking state repeatedly.
2. Attempt receipt upload or host confirmation after cancellation using authorized test accounts.
3. Inspect final booking status.

# Expected Result

1. Cancelled by Customer remains final.
2. No subsequent receipt upload or host confirmation reactivates it.
3. Released slot is not re-reserved by this cancelled booking.

# Notes

Exact API errors for unrelated post-cancellation actions are not specified.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
