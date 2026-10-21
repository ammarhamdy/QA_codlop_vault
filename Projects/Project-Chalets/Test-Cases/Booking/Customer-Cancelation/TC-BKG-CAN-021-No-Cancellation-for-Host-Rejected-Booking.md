---
tc_id: TC-BKG-CAN-021
title: No Cancellation for Host-Rejected Booking
priority: Medium
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
| Booking state | rejected_by_host |

# Preconditions

-Customer owns a booking already rejected by host.

# Steps

1. Open cancelled/rejected bookings tab.
2. Open rejected booking details.
3. Check actions and attempt direct cancel request.

# Expected Result

- Rejected booking stays in its final rejected state.
- Customer cannot convert it to Cancelled by Customer.

# Notes


# Attachments


# Script


---
*Last Updated: 2026-10-21 09:00*
