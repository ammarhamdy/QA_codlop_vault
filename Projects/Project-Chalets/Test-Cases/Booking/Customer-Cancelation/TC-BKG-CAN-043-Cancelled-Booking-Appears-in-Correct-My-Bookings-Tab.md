---
tc_id: TC-BKG-CAN-043
title: "Cancelled Booking Appears in Correct My Bookings Tab"
priority: High
status: Ready
type: Functional
linked_requirement: "PRD §10, §11"
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Held or confirmed booking successfully cancelled |

# Preconditions

Customer is signed in and booking has been cancelled by customer.

# Steps

1. Open My Bookings.
2. Inspect Upcoming and Cancelled/Rejected/Expired tabs.
3. Open cancelled booking details.

# Expected Result

1. Cancelled booking appears under cancelled/rejected/expired group with state Cancelled by Customer.
2. It is not presented as an active upcoming booking.
3. Details preserve booking dates, fixed amount and policy.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
