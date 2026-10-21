---
tc_id: TC-BKG-CAN-038
title: Cancellation Amount Is Consistent Across Customer and Host
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
| Scenario | Medium |
| Scenario | 1000 SAR |
| Scenario | 48h until check-in |

# Preconditions

-Customer and host accounts are accessible.

# Steps

1. Cancel confirmed booking.
2. Read due amount on customer booking details.
3. Read host booking details and notification.

# Expected Result

-  Both parties see the same due amount (500.00 SAR).
- Host notification includes booking reference and due amount.
- Amount is presented as payable directly by host, not by the platform.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
