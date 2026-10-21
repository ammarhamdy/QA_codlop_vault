---
tc_id: TC-BKG-CAN-029
title: Strict Policy Refund at 192 Hours Before Check-In (100%)
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
| Policy | Strict |
| fixed booking amount | 1000 SAR |
| hours until check-in | 192 |

# Preconditions

-Customer has a confirmed booking eligible for cancellation at the selected time.

# Steps

1. Open booking details and verify the policy stored on the booking.
2. Start cancellation and inspect the amount shown in the red dialog.
3. Confirm cancellation.
4. Compare due amount in customer details and host notification.

# Expected Result

- Displayed and recorded amount due to customer is 1000.00 SAR (100%).
- The same due amount is shown to both parties.
- No in-platform refund or money movement occurs.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
