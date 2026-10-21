---
tc_id: TC-BKG-CAN-023
title: Confirmed Cancellation With Provided Reason
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
| Scenario | Confirmed booking eligible for cancellation |
| Scenario | sample reason |

# Preconditions

Customer owns an eligible confirmed booking.

# Steps

1. Open cancellation dialog.
2. Enter a reason.
3. Confirm cancellation.
4. Review booking outcome.

# Expected Result

- Cancellation succeeds without requiring host approval.
- The entered reason does not alter the policy-based due amount.

# Notes

# Attachments


# Script


---
*Last Updated: 2026-10-21 09:00*
