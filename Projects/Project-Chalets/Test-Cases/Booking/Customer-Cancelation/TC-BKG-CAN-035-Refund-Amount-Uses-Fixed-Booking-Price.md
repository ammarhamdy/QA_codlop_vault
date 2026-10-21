---
tc_id: TC-BKG-CAN-035
title: Refund Amount Uses Fixed Booking Price
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
| Scenario | Booked at 1000 SAR |
| Scenario | listing later changes to 1400 SAR |

# Preconditions

-Booking was created and confirmed at 1000 SAR.

# Steps

1. Modify listing price after booking creation.
2. Cancel booking in a window with 50% policy entitlement.
3. Inspect customer due amount and host notification.

# Expected Result

1. Due amount is 500.00 SAR, calculated from original fixed booking price.
2. Updated listing price does not retroactively affect booking.

# Notes


# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
