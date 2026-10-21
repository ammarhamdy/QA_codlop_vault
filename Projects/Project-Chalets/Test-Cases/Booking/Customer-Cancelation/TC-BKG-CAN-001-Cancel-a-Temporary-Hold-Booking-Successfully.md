---
tc_id: TC-BKG-CAN-001
title: Cancel a Temporary Hold Booking Successfully
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
| Booking | held |
| Scenario | hold timer active |
| Scenario | no receipt |

# Preconditions

-Customer is authenticated and owns an active temporary hold booking.

# Steps

1. Open My Bookings and locate the temporary hold booking.
2. Open its details and select Cancel Booking.
3. Read the red confirmation dialog.
4. Confirm cancellation.
5. Refresh booking details and the listing calendar within one minute.

# Expected Result

- The red dialog explains that the slot will be released and any transferred money must be refunded directly by the host.
- Booking state becomes Cancelled by Customer.
- The reserved slot is released within one minute and is available for another eligible customer.
-  Host receives the customer-cancellation notification.

# Notes

# Attachments

# Script

---
*Last Updated: 2026-10-21 09:00*
